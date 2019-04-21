#!/usr/bin/env bash

# Written by Sharmila
# This file generates file_info.csv which contains all
# file feature information including size, rows, cols
# and command times for sort, max, min

new_files=(~/CloudComputing/compiled_data/*.csv)
old_files=(~/CloudComputing/data/*.csv)
files=( ${old_files[@]} ${new_files[@]} )

rm "output_files/size_rows_cols.log"

# get file size, num rows, num cols
for ((i=0;i<${#files[@]};i++)); do
	name=$(basename "${files[i]}" .csv)
	echo "Calculating features for ${name}.csv..."

	size=$(stat -c '%s' ${files[i]})
	rows=$(cat ${files[i]} | wc -l)
	#cols=$(awk '{print NF}' ${files[i]} | sort -nu | tail -n 1)
	cols=$(awk -F, 'NR==1{print NF}' ${files[i]})
	
	echo "${i} of ${#files[@]} $size $rows $cols"
	echo "${files[i]} $size $rows $cols" >> "size_rows_cols.log"
done

# convert log to csv file
python3 src/feature_space_helper.py

# Move intermediate files to different folder to avoid clutter in main directory
mkdir -p "output_files/"
mkdir -p "output_files/temp/"
mv "size_rows_cols.log" "output_files/temp/size_rows_cols.log"

# generate the file names (sort time, max time, min time)
chmod u+x src/generate_file_times.sh
source src/generate_file_times.sh

mv "time_labels.log" "output_files/temp/time_labels.log"
mv "file_time_table.csv" "output_files/temp/file_time_table.csv"
mv "feature_table.csv" "output_files/feature_table.csv"
