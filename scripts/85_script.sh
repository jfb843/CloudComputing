sort --field-separator="," --key=8 compiled_data/2015-merged.csv
awk 'BEGIN { max=0 } $11 > max { max=$11; name=$11 } END { print name }' FS="," compiled_data/winemag-data-130k-v2-merged.csv
awk 'BEGIN { min=1000000 } $49 < min { min=$49; name=$49 } END { print name }' FS="," data/2011_data.csv
