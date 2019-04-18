awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," compiled_data/falldeteciton-merged.csv
