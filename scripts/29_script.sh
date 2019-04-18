awk 'BEGIN { min=1000000 } $12 < min { min=$12; name=$12 } END { print name }' FS="," data/country_stats.csv
sort --field-separator="," --key=7 data/UserList.csv
