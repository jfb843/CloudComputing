awk 'BEGIN { max=0 } $23 > max { max=$23; name=$23 } END { print name }' FS="," compiled_data/Iowa_Liquor_Sales-merged.csv
awk 'BEGIN { max=0 } $9 > max { max=$9; name=$9 } END { print name }' FS="," data/checkouts-by-title.csv
