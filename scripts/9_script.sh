awk 'BEGIN { min=1000000 } $6 < min { min=$6; name=$6 } END { print name }' FS="," compiled_data/falldeteciton-merged.csv
awk 'BEGIN { min=1000000 } $13 < min { min=$13; name=$13 } END { print name }' FS="," compiled_data/parking-citations-merged.csv
awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," compiled_data/2012_data-merged.csv
