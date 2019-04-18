awk 'BEGIN { min=1000000 } $6 < min { min=$6; name=$6 } END { print name }' FS="," data/parking-citations.csv
