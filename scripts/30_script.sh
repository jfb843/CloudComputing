sort --field-separator="," --key=12 data/anime_filtered.csv
awk 'BEGIN { max=0 } $10 > max { max=$10; name=$10 } END { print name }' FS="," compiled_data/country_stats-merged.csv
