awk 'BEGIN { max=0 } $22 > max { max=$22; name=$22 } END { print name }' FS="," compiled_data/anime_filtered-merged.csv
