awk 'BEGIN { min=1000000 } $12 < min { min=$12; name=$12 } END { print name }' FS="," compiled_data/parking-citations-merged.csv
sort --field-separator="," --key=7 data/player_data.csv
