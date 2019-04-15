#!/usr/bin/env bash

# all_files=$(find ~/CloudComputing/data/*.csv -type f -size -2000000c)

mkdir -p "compiled_data/"
echo "Created compiled_data folder..."

# concat the mortality files
find ~/CloudComputing/data -type f -name '20*_data.csv' -exec cat {} + > ~CloudComputing/data/20x_data-merged.csv

all_files=(~/CloudComputing/data/*.csv)
echo "Number of files ${#all_files[@]}..."

# Concat files by COLUMN for diverse range of sizes

for ((i=0;i<${#all_files[@]};i++)); do
	echo "Concatenating files to ${all_files[i]}..."
	for ((j=$((i+1));j<${#all_files[@]};j++)); do
		# extract filenames for easy output file name
		first_name=$(basename "${all_files[i]}" .csv)
		second_name=$(basename "${all_files[j]}" .csv)

		#join -t, ${all_files[i]} ${all_files[j]} > ~/CloudComputing/compiled_data/${first_name}-${second_name}.csv
		paste -d, ${all_files[i]} ${all_files[j]} > ~/CloudComputing/compiled_data/${first_name}-${second_name}.csv
		size=$(stat -c %s ~/CloudComputing/data/${first_name}-${second_name}.csv)
		cols=$(awk '{print NF}' ~/CloudComputing/data/${first_name}-${second_name}.csv | sort -nu | tail -n 1)
		rows=$(cat ~/CloudComputing/data/${first_name}-${second_name}.csv | wc -l)
		echo "${cols} cols, ${rows}, rows"
	done
done