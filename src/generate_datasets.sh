#!/usr/bin/env bash

# Written by Sharmila
# This script generates compiled datasets from original Kaggle data in data/ folder

rm -r compiled_data/
mkdir compiled_data/

# all_files=$(find ~/CloudComputing/data/*.csv -type f -size -2000000c)
all_files=(~/CloudComputing/data/*.csv)
echo "Number of files ${#all_files[@]}..."

# Duplicate and concat small files
for ((i=0;i<${#all_files[@]};i++)); do
	echo "Duplicating ${all_files[i]}..."
	# extract filename for easy output file name
	name=$(basename "${all_files[i]}" .csv)

	# duplicate all files
	cat ${all_files[i]} ${all_files[i]}  >> ~/CloudComputing/compiled_data/${name}-merged.csv
	size=$(stat -c %s ~/CloudComputing/compiled_data/${name}-merged.csv)
	echo "Size of $name is... "${size}""
	
	# if still not sufficiently large, duplicate again
	while [ "${size}" -lt 1000000 ]; do
		cat ${all_files[i]} >> ~/CloudComputing/compiled_data/${name}-merged.csv
		size=$(stat -c %s ~/CloudComputing/compiled_data/${name}-merged.csv)
		echo "Size of ${name} is... "${size}""
	done
done

# concat the 20x_data files
cat ~/CloudComputing/data/20*_data.csv > ~/CloudComputing/compiled_data/mortality-merged.csv

# goal of 100 files
num_files=$(find ~/CloudComputing/compiled_data -type f -name "*.csv" | wc -l)
echo "${num_files}"

# set random seed
# RANDOM=1341

# # concat two random files
# while [ "${num_files}" -lt 70 ]; do
# 	randomf=$(${all_files[$RANDOM % ${#all_files[@]} ]})
# 	randomf_two=$(${all_files[$RANDOM % ${#all_files[@]} ]})
# 	name=$(basename "${randomf}" .csv)
# 	name_two=$(basename "${randomf_two}" .csv)
# 	echo "randomly selected file ${randomf} and ${randomf_two}..."
# 	python3 generate_datasets_helper.py ${randomf} ${randomf_two}
# 	# cat "${randomf}" "${randomf_two}" > ~/Documents/CloudComputing/data/${name}-${name_two}.csv
# 	# remove excess rows and cols
# 	#python3 shape-datasets.py ~/CloudComputing/data/${name}-${name_two}.csv
# 	num_files=$(find ~/CloudComputing/compiled_data -type f -name "*.csv" | wc -l)
# done

