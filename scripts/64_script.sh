awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," data/parking-citations.csv
awk 'BEGIN { max=0 } $65 > max { max=$65; name=$65 } END { print name }' FS="," compiled_data/2007_data-merged.csv
