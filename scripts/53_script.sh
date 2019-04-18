awk 'BEGIN { min=1000000 } $12 < min { min=$12; name=$12 } END { print name }' FS="," data/Video_Games_Sales_as_at_22_Dec_2016.csv
awk 'BEGIN { max=0 } $2 > max { max=$2; name=$2 } END { print name }' FS="," compiled_data/Video_Games_Sales_as_at_22_Dec_2016-merged.csv
