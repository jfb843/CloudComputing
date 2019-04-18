awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," compiled_data/player_data-merged.csv
awk 'BEGIN { max=0 } $23 > max { max=$23; name=$23 } END { print name }' FS="," data/anime_cleaned.csv
sort --field-separator="," --key=4 data/checkouts-by-title.csv
