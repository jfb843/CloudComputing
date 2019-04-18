awk 'BEGIN { min=1000000 } $26 < min { min=$26; name=$26 } END { print name }' FS="," compiled_data/anime_cleaned-merged.csv
sort --field-separator="," --key=26 compiled_data/2012_data-merged.csv
awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," compiled_data/Video_Games_Sales_as_at_22_Dec_2016-merged.csv
