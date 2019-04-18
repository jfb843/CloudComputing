awk 'BEGIN { min=1000000 } $7 < min { min=$7; name=$7 } END { print name }' FS="," compiled_data/parking-citations-merged.csv
