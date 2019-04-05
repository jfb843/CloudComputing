#!/usr/bin/env bash

files=($(ls *.csv))

rm "time_labels.log"

# sort by 2nd column
sort_times=()
for ((i=0;i<${#files[@]};i++)); do
	sort_time="$(time ( sort -k2 ${files[i]}) 2>&1 1>/dev/null )"
	sort_times=( ${sort_times[@]} sort_time )
	echo "${files[i]}: $sort_time" >> "time_labels.log"
done