awk 'BEGIN { max=0 } $27 > max { max=$27; name=$27 } END { print name }' FS="," compiled_data/2010_data-merged.csv
awk 'BEGIN { min=1000000 } $0 < min { min=$0; name=$0 } END { print name }' FS="," compiled_data/adult-merged.csv
