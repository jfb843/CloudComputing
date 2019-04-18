awk 'BEGIN { max=0 } $11 > max { max=$11; name=$11 } END { print name }' FS="," compiled_data/country_stats-merged.csv
