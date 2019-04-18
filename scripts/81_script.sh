awk 'BEGIN { max=0 } $12 > max { max=$12; name=$12 } END { print name }' FS="," compiled_data/UserList-merged.csv
awk 'BEGIN { max=0 } $11 > max { max=$11; name=$11 } END { print name }' FS="," compiled_data/winemag-data-130k-v2-merged.csv
sort --field-separator="," --key=4 data/column_2C_weka.csv
