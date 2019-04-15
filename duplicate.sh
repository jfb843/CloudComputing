#!/usr/bin/env bash

# all_files=$(find ~/CloudComputing/data/*.csv -type f -size -2000000c)

mkdir "compiled_data/"

all_files=(~/CloudComputing/data/*.csv)
echo "Number of files ${#all_files[@]}..."

duplicate () {
	# Duplicate to reach at least 10MB
	for ((i=0;i<${#all_files[@]};i++)); do
		echo "Duplicating ${all_files[i]}..."
		# extract filename for easy output file name
		name=$(basename "${all_files[i]}" .csv)

		# duplicate all files once
		cat ${all_files[i]} ${all_files[i]}  > ~/CloudComputing/data/${name}-2.csv
		size=$(stat -c %s ~/CloudComputing/data/${name}-2.csv)
		echo "${size}"
		
		# if still not sufficiently large
		declare -i count=2 # file currently duplicated
		while [ "${size}" -lt $1 ]; do
			count=$((count + 1))
			cat ~/CloudComputing/data/${name}-$((count - 1)).csv ~/CloudComputing/data/${name}-$((count - 1)).csv > ~/CloudComputing/data/${name}-${count}.csv
			size=$(stat -c %s ~/CloudComputing/data/${name}-${count}.csv)
			echo "File number $i size is... "${size}""
		done

		mv ~/CloudComputing/data/${name}-${count}.csv ~/CloudComputing/compiled_data/${name}-${count}-$2.csv	
		rm ~/CloudComputing/data/${name}-*.csv # remove the old files
	done
}

duplicate 1000000 small
duplicate 500000000 medium
duplicate 1000000000 large