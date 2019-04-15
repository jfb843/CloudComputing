#!/usr/bin/env bash

# all_files=$(find ~/CloudComputing/data/*.csv -type f -size -2000000c)

mkdir -p "compiled_data/"
echo "Created compiled_data folder..."

# concat the mortality files
find ~/CloudComputing/data -type f -name '20*_data.csv' -exec cat {} + >> ~CloudComputing/compiled_data/mortality-merged.csv
echo "Concat mortality datasets..."

all_files=(~/CloudComputing/data/*.csv)
echo "Number of files ${#all_files[@]}..."

# Concat files by COLUMN for diverse range of sizes

for ((i=0;i<${#all_files[@]};i++)); do
	echo "Concatenating files to ${all_files[i]}..."
	declare -i count=$((i + 1))
	for ((j=$count;j<${#all_files[@]};j++)); do
		# extract filenames for easy output file name
		first_name=$(basename "${all_files[i]}" .csv)
		second_name=$(basename "${all_files[j]}" .csv)
		echo "${first_name} ${second_name}"

	#	join ${all_files[i]} ${all_files[j]} > ~/CloudComputing/compiled_data/${first_name}-${second_name}.csv
		paste -d, ${all_files[i]} ${all_files[j]} > ~/CloudComputing/compiled_data/${first_name}-merged.csv
		size=$(stat -c '%s' ~/CloudComputing/compiled_data/${first_name}-merged.csv)
		cols=$(awk '{print NF}' ~/CloudComputing/compiled_data/${first_name}-merged.csv | sort -nu | tail -n 1)
		rows=$(cat ~/CloudComputing/compiled_data/${first_name}-merged.csv | wc -l)
		echo "${cols} cols, ${rows} rows, ${size} size"

		mv ~/CloudComputing/compiled_data/${first_name}-merged.csv ~/CloudComputing/compiled_data/${first_name}-${second_name}.csv
	done
done
