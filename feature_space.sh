#!/usr/bin/env bash

new_files=(~/CloudComputing/compiled_data/*.csv)
old_files=(~/CloudComputing/data/*.csv)
files=( ${old_files[@]} ${new_files[@]} )

rm "size_rows_cols.log"

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
python3 features_space_helper.py

# Move intermediate files to different folder to avoid clutter in main directory
mkdir -p "output_files/"
mv "size_rows_cols.log" "output_files/size_rows_cols.log"

# generate the file names (sort time, max time, min time)
chmod u+x generate_file_times.sh
source generate_file_times.sh

mv "time_labels.log" "output_files/time_labels.log"
mv "feature_table.csv" "output_files/feature_table.csv"
mv "file_time_table.csv" "file_time_table.csv"