awk 'BEGIN { min=1000000 } $9 < min { min=$9; name=$9 } END { print name }' FS="," compiled_data/users_filtered-merged.csv
sort --field-separator="," --key=5 compiled_data/googleplaystore-merged.csv
