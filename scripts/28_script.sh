awk 'BEGIN { max=0 } $0 > max { max=$0; name=$0 } END { print name }' FS="," compiled_data/feature_tbl-merged.csv
