#!/usr/bin/env bash

# all_files=$(find ~/CloudComputing/data/*.csv -type f -size -2000000c)
all_files=(~/CloudComputing/data/*.csv)
echo "Number of files ${#all_files[@]}..."

# Duplicate and concat small files
for ((i=0;i<${#all_files[@]};i++)); do
	echo "Duplicating ${all_files[i]}..."
	# extract filename for easy output file name
	name=$(basename "${all_files[i]}" .csv)

	# duplicate all files
	cat ${all_files[i]} ${all_files[i]}  >> ~/CloudComputing/data/${name}-merged.csv
	size=$(stat -c %s ~/CloudComputing/data/${name}-merged.csv)
	echo "${size}"
	
	# if still not sufficiently large
	while [ "${size}" -lt 1000000 ]; do
		echo "File number $i size is... "${size}""
		#random=$(shuf -n1 -e "${all_files}")
		random=$(shuf -n 1 -e ~/CloudComputing/data/*.csv)
		echo "Randomly selected file ${random}..."	
		cat ~/CloudComputing/data/${name}-merged.csv "${random}" > ~/CloudComputing/data/${name}-merged.csv
		size=$(stat -c %s ~/CloudComputing/data/${name}-merged.csv)
	done
done

# concat the 20x_data files
find ~/CloudComputing/data -type f -name '20*_data.csv' -exec cat {} + >> ~CloudComputing/data/20x_data-merged.csv

# goal of 100 files
num_files=$(find ~/CloudComputing/data -type f -name "*.csv" | wc -l)
echo "${num_files}"

# concat two random files
while [ "${num_files}" -lt 100 ]; do
	random=$(shuf -n 1 -e ~/CloudComputing/data/*.csv)
	random_two=$(shuf -n 1 -e ~/CloudComputing/data/*.csv)
	name=$(basename "${random}" .csv)
	name_two=$(basename "${random}" .csv)
	cat "${random}" "${random_two}" > ~/CloudComputing/data/${name}-${name_two}.csv
	num_files=$(find ~/CloudComputing/data -type f -name "*.csv" | wc -l)
done

