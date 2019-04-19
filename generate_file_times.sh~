#!/usr/bin/env bash

# Written by Sharmila
# Generate time labels for files to sort, find max, and find min

new_files=(~/CloudComputing/compiled_data/*.csv)
old_files=(~/CloudComputing/data/*.csv)
files=( ${old_files[@]} ${new_files[@]} )

#files=($(ls "data/"*.csv))

#rm "time_labels.log"

echo "${#files[@]}"

for ((i=0;i<${#files[@]};i++)); do
	echo "${i} of ${#files[@]}"
	# sort by 2nd column
	echo "Sorting ${files[i]}..."
	sort_time="$(time ( sort -k2 ${files[i]}) 2>&1 1>/dev/null )"

	# max by 3nd column
	echo "Calculating max ${files[i]}..."
	max_time="$(time ( awk  'BEGIN{max=-1000}{if(($3)>max) max=($3)}END {print max}' ${files[i]}) 2>&1 1>/dev/null )"

	# min by 3nd column
	echo "Calculating min ${files[i]}..."
	min_time="$(time ( awk  'BEGIN{min=1000000}{if(($3)>min)  min=($3)}END {print min}' ${files[i]}) 2>&1 1>/dev/null )"

	echo "${files[i]}: $sort_time $max_time $min_time" >> "time_labels.log"
done

# Helper function to convert log to csv
python3 file_times_helper.py