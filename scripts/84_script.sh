sort --field-separator="," --key=3 data/googleplaystore.csv
awk 'BEGIN { min=1000000 } $61 < min { min=$61; name=$61 } END { print name }' FS="," compiled_data/loan-merged.csv
awk 'BEGIN { min=1000000 } $0 < min { min=$0; name=$0 } END { print name }' FS="," data/adult.csv
