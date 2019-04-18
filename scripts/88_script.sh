awk 'BEGIN { max=0 } $54 > max { max=$54; name=$54 } END { print name }' FS="," compiled_data/mortality-merged.csv
