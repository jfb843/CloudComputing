sort --field-separator="," --key=30 data/anime_filtered.csv
sort --field-separator="," --key=3 compiled_data/column_2C_weka-merged.csv
awk 'BEGIN { min=1000000 } $0 < min { min=$0; name=$0 } END { print name }' FS="," compiled_data/users_cleaned-merged.csv
