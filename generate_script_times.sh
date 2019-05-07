#!/usr/bin/env bash

# Author: Heather Han
# Generate time labels for each script in the scripts folder 
# NOTE: Runs each script sequentially


scripts=(~/CloudComputing/scripts/*)

rm ~/CloudComputing/model/script_labels.log

for ((i=0;i<${#scripts[@]};i++)); do
	echo "${i} of ${#scripts[@]}"
	runtime="$(time (source ${scripts[i]}) 2>&1 1>/dev/null )"
	echo "${scripts[i]}: $runtime" >> ~/CloudComputing/model/script_labels.log
done
echo "done"

# Helper function to convert log to csv
cd model
python3 script_times_helper.py --asynchronous False
rm script_labels.log
cd -
