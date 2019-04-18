awk 'BEGIN { min=1000000 } $36 < min { min=$36; name=$36 } END { print name }' FS="," compiled_data/2006_data-merged.csv
awk 'BEGIN { max=0 } $12 > max { max=$12; name=$12 } END { print name }' FS="," compiled_data/Video_Games_Sales_as_at_22_Dec_2016-merged.csv
