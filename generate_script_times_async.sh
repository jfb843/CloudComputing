#!/usr/bin/env bash

# Author: Heather Han
# Generate time labels for each script in different environments by
# submitting each as part of a batch of 2-10 asynchronous jobs

# Usage: run this script locally and modify the "user defined" section for 
# your cluster

# ===== USER DEFINED: define cluster id and project id =====
project='cloud-computing-236014'
cluster='cloud2'
region='global'
# define correct cluster filepath to jar files
path="file:///home/hhan16/CloudComputing/jars/"


# ====== ACTUAL CODE STARTS HERE =====
rm model/runtimes_async.log

jar_files=()
for ((i=1;i<101;i++)); do
	jar_files=( ${jar_files[@]} $path"script"$i".jar")
done

# 25 iterations of groups of asynchronous jobs
for ((i=1;i<26;i++)); do
	echo "Iteration $i of 20..."
	# select random number (in range 2-10) of scripts for the iter
	num_scripts=`shuf -i 2-10 -n 1`
	group_id=$i'-'$num_scripts

	job_ids=()  # id of hadoop job
	indices=()  # index for script labels

	# submit each script asynchronously
	for ((s=0;s<num_scripts;s++)); do
		# randomly select a script
		rand=$[$RANDOM % ${#jar_files[@]}]
		jar=${jar_files[$rand]}

		# generate names #iter-#async-script_id
		index=$group_id'-'$(( rand + 1 ))
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
			# ping every 20 seconds
			if [[ $output != *"state: DONE"* ]]; then sleep 20;	fi
		done
		# save details of completed job
		echo ${indices[j]} >> model/runtimes_async.log
		echo $output >> model/runtimes_async.log
	done

	sleep 1m  # wait 1 min before starting next iter
done

# Helper function to get runtimes and save in csv file
cd model
python3 script_times_helper.py --asynchronous True
cd - 
