awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," data/Iris.csv
sort --field-separator="," --key=6 compiled_data/adult-merged.csv
