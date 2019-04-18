awk 'BEGIN { min=1000000 } $3 < min { min=$3; name=$3 } END { print name }' FS="," compiled_data/athlete_events-merged.csv
awk 'BEGIN { min=1000000 } $4 < min { min=$4; name=$4 } END { print name }' FS="," compiled_data/Iowa_Liquor_Sales-merged.csv
