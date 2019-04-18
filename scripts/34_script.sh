awk 'BEGIN { min=1000000 } $16 < min { min=$16; name=$16 } END { print name }' FS="," compiled_data/AnimeList-merged.csv
sort --field-separator="," --key=20 data/anime_filtered.csv
awk 'BEGIN { max=0 } $7 > max { max=$7; name=$7 } END { print name }' FS="," compiled_data/animelists_cleaned-merged.csv
