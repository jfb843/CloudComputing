awk 'BEGIN { max=0 } $12 > max { max=$12; name=$12 } END { print name }' FS="," compiled_data/anime_cleaned-merged.csv
sort --field-separator="," --key=14 compiled_data/users_cleaned-merged.csv
