#!/usr/bin/env bash

# Author: Heather Han
# Generate time labels for each script in different environments by
# submitting each as part of a batch of 5-20 asynchronous jobs


scripts=(~/CloudComputing/scripts/*)

cd ~/CloudComputing/model/

rm ~/CloudComputing/script_labels_async.log
rm ~/CloudComputing/runtime_status_async.log

for ((i=0;i<${#scripts[@]};i++)); do
	# TODO
done
echo "done" >> ~/CloudComputing/runtime_status.log

# Helper function to convert log to csv
python3 script_times_helper.py
