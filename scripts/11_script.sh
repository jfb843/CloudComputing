sort --field-separator="," --key=4 data/checkouts-by-title.csv
grep MaterialType data/checkouts-by-title.csv
awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," compiled_data/googleplaystore-merged.csv
grep Title data/checkouts-by-title.csv
awk 'BEGIN { min=1000000 } $18 < min { min=$18; name=$18 } END { print name }' FS="," compiled_data/data-merged.csv
