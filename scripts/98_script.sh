awk 'BEGIN { max=0 } $56 > max { max=$56; name=$56 } END { print name }' FS="," data/2008_data.csv
sort --field-separator="," --key=16 compiled_data/movies_metadata-merged.csv
awk 'BEGIN { min=1000000 } $8 < min { min=$8; name=$8 } END { print name }' FS="," compiled_data/2015-merged.csv
