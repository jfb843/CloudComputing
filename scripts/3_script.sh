awk 'BEGIN { min=1000000 } $5 < min { min=$5; name=$5 } END { print name }' FS="," data/checkouts-by-title.csv
awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," compiled_data/Checkouts_By_Title_Data_Lens_2005-merged.csv
