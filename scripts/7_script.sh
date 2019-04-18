awk 'BEGIN { min=1000000 } $4 < min { min=$4; name=$4 } END { print name }' FS="," compiled_data/player_data-merged.csv
awk 'BEGIN { min=1000000 } $14 < min { min=$14; name=$14 } END { print name }' FS="," compiled_data/Video_Games_Sales_as_at_22_Dec_2016-merged.csv
