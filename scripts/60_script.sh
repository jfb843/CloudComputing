awk 'BEGIN { min=1000000 } $11 < min { min=$11; name=$11 } END { print name }' FS="," compiled_data/users_cleaned-merged.csv
awk 'BEGIN { min=1000000 } $14 < min { min=$14; name=$14 } END { print name }' FS="," data/Video_Games_Sales_as_at_22_Dec_2016.csv
