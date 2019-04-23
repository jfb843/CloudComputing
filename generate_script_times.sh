#!/usr/bin/env bash

# Author: Heather Han
# Generate time labels for each script in the scripts folder 


scripts=(~/CloudComputing/scripts/*)

cd ~/CloudComputing/model/

rm ~/CloudComputing/script_labels.log
rm ~/CloudComputing/runtime_status.log

for ((i=0;i<${#scripts[@]};i++)); do
	echo "${i} of ${#scripts[@]}" >> ~/CloudComputing/runtime_status.log
	runtime="$(time (source ${scripts[i]}) 2>&1 1>/dev/null )"
	echo "${scripts[i]}: $runtime" >> ~/CloudComputing/model/script_labels.log
done
echo "done" >> ~/CloudComputing/runtime_status.log

# Helper function to convert log to csv
python3 script_times_helper.py
