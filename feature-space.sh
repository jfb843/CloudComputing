#!/usr/bin/env bash

new_files=(~/CloudComputing/compiled_data/*.csv)
old_files=(~/CloudComputing/data/*.csv)
files=( ${old_files[@]} ${new_files[@]} )

rm "size_row_cols.log"

# get file size, num rows, num cols
for ((i=0;i<${#files[@]};i++)); do
	name=$(basename "${files[i]}" .csv)
	echo "Calculating features for ${name}.csv..."

	size=$(stat -c '%s' ${files[i]})
	rows=$(cat ${files[i]} | wc -l)
	#cols=$(awk '{print NF}' ${files[i]} | sort -nu | tail -n 1)
	cols=$(awk -F, 'NR==1{print NF}' ${files[i]})
	
	echo "${i} of ${#files[@]} $size $rows $cols"
	echo "${name} $size $rows $cols" >> "size_rows_cols.log"
done

# create feature space
python3 ftable.py
