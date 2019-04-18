sort --field-separator="," --key=58 compiled_data/2007_data-merged.csv
awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," compiled_data/adult-merged.csv
