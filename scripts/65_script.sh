awk 'BEGIN { min=1000000 } $88 < min { min=$88; name=$88 } END { print name }' FS="," data/data.csv
awk 'BEGIN { min=1000000 } $8 < min { min=$8; name=$8 } END { print name }' FS="," data/2015.csv
sort --field-separator="," --key=4 compiled_data/animelists_filtered-merged.csv
