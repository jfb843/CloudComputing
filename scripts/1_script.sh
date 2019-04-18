awk 'BEGIN { min=1000000 } $10 < min { min=$10; name=$10 } END { print name }' FS="," data/Iowa_Liquor_Sales.csv
sort --field-separator="," --key=3 data/2015.csv
sort --field-separator="," --key=14 compiled_data/anime_cleaned-merged.csv
