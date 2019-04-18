awk 'BEGIN { min=1000000 } $0 < min { min=$0; name=$0 } END { print name }' FS="," compiled_data/Iris-merged.csv
awk 'BEGIN { min=1000000 } $9 < min { min=$9; name=$9 } END { print name }' FS="," compiled_data/Iowa_Liquor_Sales-merged.csv
