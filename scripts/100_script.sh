sort --field-separator="," --key=37 data/2007_data.csv
awk 'BEGIN { max=0 } $13 > max { max=$13; name=$13 } END { print name }' FS="," compiled_data/winemag-data-130k-v2-merged.csv
