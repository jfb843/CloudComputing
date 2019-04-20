awk 'BEGIN { max=0 } $6 > max { max=$6; name=$6 } END { print name }' FS="," compiled_data/column_2C_weka-merged.csv
sort --field-separator="," --key=2 compiled_data/column_2C_weka-merged.csv
