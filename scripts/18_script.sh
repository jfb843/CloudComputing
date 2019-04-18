sort --field-separator="," --key=3 data/animelists_cleaned.csv
awk 'BEGIN { max=0 } $8 > max { max=$8; name=$8 } END { print name }' FS="," compiled_data/AnimeList-merged.csv
sort --field-separator="," --key=2 data/anime_filtered.csv
