awk 'BEGIN { min=1000000 } $10 < min { min=$10; name=$10 } END { print name }' FS="," compiled_data/animelists_filtered-merged.csv
sort --field-separator="," --key=55 compiled_data/data-merged.csv
awk 'BEGIN { max=0 } $7 > max { max=$7; name=$7 } END { print name }' FS="," data/speakers_all.csv
