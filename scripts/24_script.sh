awk 'BEGIN { min=1000000 } $9 < min { min=$9; name=$9 } END { print name }' FS="," data/Iowa_Liquor_Sales.csv
awk 'BEGIN { min=1000000 } $3 < min { min=$3; name=$3 } END { print name }' FS="," data/Iowa_Liquor_Sales.csv
awk 'BEGIN { max=0 } $7 > max { max=$7; name=$7 } END { print name }' FS="," data/2015.csv
