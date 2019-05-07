#!/usr/bin/env bash

# Author: Heather Han
# Generate time labels for each script in different environments by
# submitting each as part of a batch of 5-20 asynchronous jobs

# Usage: run this script locally and modify the "user defined" section for 
# your cluster

# ===== USER DEFINED: define cluster id and project id =====
project='cloud-computing-236014'
cluster='cloud'
region='us-east1'
# define correct cluster filepath to jar files
path="file:///home/hhan16/CloudComputing/jars/"


# ====== ACTUAL CODE STARTS HERE =====
rm runtimes_async.log

jar_files=()
ids=( "100" "10" )
for id in "${ids[@]}"; do
	jar_files=( ${jar_files[@]} $path"script"$id".jar")
done

# 20 iterations of groups of asynchronous jobs
for ((i=0; i<2;i++)); do
	# select random number (in range 5-20) of scripts for the iter
	# num_scripts=`shuf -i 5-20 -n 1`
	num_scripts=`shuf -i 1-3 -n 1`
	group_id=$i'_'$num_scripts

	job_ids=()  # id of hadoop job
	indices=()  # index for script labels

	# submit each script asynchronously
	for ((s=0;s<num_scripts;s++)); do
		# randomly select a script
		rand=$[$RANDOM % ${#jar_files[@]}]
		jar=${jar_files[$rand]}

		# generate names 
		index=$group_id'-'$s
		indices=( ${indices[@]} $index )

		submit=`gcloud dataproc jobs submit hadoop --project $project --cluster $cluster --region $region --jar $jar --async`

		# keep track of job ids
		job_id=`awk -F 'jobId:' '{print $2}' <<< $submit`
		job_id=`awk -F 'projectId:' '{print $1}' <<< $job_id`
		job_ids=( ${job_ids[@]} $job_id )
	done

	# get completed runtimes
	for ((j=0;j<${#job_ids[@]};j++)); do
		output=""
		# wait till the scripts are done
		echo "waiting for async job ${job_ids[j]} to complete..."
		while [[ $output != *"state: DONE"* ]]; do
			output=`gcloud dataproc jobs describe ${job_ids[j]} --project $project --region $region`
		done
		# save details of completed job
		echo ${indices[j]} >> model/runtimes_async.log
		echo $output >> model/runtimes_async.log
	done
done

# Helper function to get runtimes and save in csv file
python3 script_times_helper.py --asynchronous True
