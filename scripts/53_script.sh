awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," compiled_data/Checkouts_By_Title_Data_Lens_2005-merged.csv
awk 'BEGIN { min=1000000 } $8 < min { min=$8; name=$8 } END { print name }' FS="," compiled_data/Iowa_Liquor_Sales-merged.csv
grep NA_Sales data/Video_Games_Sales_as_at_22_Dec_2016.csv
awk 'BEGIN { min=1000000 } $62 < min { min=$62; name=$62 } END { print name }' FS="," data/data.csv
