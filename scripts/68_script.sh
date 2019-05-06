awk 'BEGIN { min=1000000 } $12 < min { min=$12; name=$12 } END { print name }' FS="," compiled_data/Video_Games_Sales_as_at_22_Dec_2016-merged.csv
awk 'BEGIN { max=0 } $10 > max { max=$10; name=$10 } END { print name }' FS="," compiled_data/isd-history-merged.csv
awk 'BEGIN { min=1000000 } $4 < min { min=$4; name=$4 } END { print name }' FS="," compiled_data/Checkouts_By_Title_Data_Lens_2005-merged.csv
sort --field-separator="," --key=22 compiled_data/2009_data-merged.csv
awk 'BEGIN { max=0 } $1 > max { max=$1; name=$1 } END { print name }' FS="," data/anime_filtered.csv
awk 'BEGIN { max=0 } $2 > max { max=$2; name=$2 } END { print name }' FS="," compiled_data/2013_data-merged.csv
sort --field-separator="," --key=20 compiled_data/nyc-rolling-sales-merged.csv
