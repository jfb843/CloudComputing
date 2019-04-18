awk 'BEGIN { max=0 } $27 > max { max=$27; name=$27 } END { print name }' FS="," compiled_data/2009_data-merged.csv
