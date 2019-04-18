awk 'BEGIN { max=0 } $10 > max { max=$10; name=$10 } END { print name }' FS="," data/country_stats.csv
awk 'BEGIN { max=0 } $13 > max { max=$13; name=$13 } END { print name }' FS="," data/Iowa_Liquor_Sales.csv
awk 'BEGIN { min=1000000 } $4 < min { min=$4; name=$4 } END { print name }' FS="," data/austria.csv
