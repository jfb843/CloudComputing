awk 'BEGIN { min=1000000 } $3 < min { min=$3; name=$3 } END { print name }' FS="," compiled_data/country_stats-merged.csv
sort --field-separator="," --key=5 data/player_data.csv
