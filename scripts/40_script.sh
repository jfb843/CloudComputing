awk 'BEGIN { min=1000000 } $38 < min { min=$38; name=$38 } END { print name }' FS="," data/data.csv
