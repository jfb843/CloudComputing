#Author: Sharmila Tamby 

#!/usr/bin/env bash

# all_files=$(find ~/CloudComputing/data/*.csv -type f -size -2000000c)

mkdir -p "compiled_data/"
echo "Created compiled_data folder..."

all_files=(~/CloudComputing/data/*.csv)
echo "Number of files ${#all_files[@]}..."

duplicate () {
	# Duplicate to reach at least 10MB
	for ((i=0;i<${#all_files[@]};i++)); do
		echo "Duplicating ${all_files[i]}..."
		# extract filename for easy output file name
		name=$(basename "${all_files[i]}" .csv)

		# duplicate all files once
		cat ${all_files[i]} ${all_files[i]} >> ~/CloudComputing/compiled_data/${name}-concat.csv
		size=$(stat -c %s ~/CloudComputing/compiled_data/${name}-concat.csv)
		echo "${size}"
		
		# if still not sufficiently large
		declare -i count=2 # file currently duplicated
		while [ "${size}" -lt $1 ]; do
			count=$((count + 1))
			cat ${all_files[i]} >> ~/CloudComputing/compiled_data/${name}-concat.csv
			size=$(stat -c %s ~/CloudComputing/compiled_data/${name}-concat.csv)
			echo "File number $i with count $count: size is... "${size}""
		done

		#mv ~/CloudComputing/data/${name}-concat.csv ~/CloudComputing/compiled_data
		mv ~/CloudComputing/compiled_data/${name}-concat.csv ~/CloudComputing/compiled_data/${name}-${count}-$2.csv
	done
}

duplicate 1000000 small
duplicate 500000000 medium
duplicate 1000000000 large
