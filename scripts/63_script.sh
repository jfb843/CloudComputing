awk 'BEGIN { max=0 } $61 > max { max=$61; name=$61 } END { print name }' FS="," compiled_data/2015_data-merged.csv
sort --field-separator="," --key=5 compiled_data/UserAnimeList-merged.csv
awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," compiled_data/winemag-data-130k-v2-merged.csv
awk 'BEGIN { max=0 } $2 > max { max=$2; name=$2 } END { print name }' FS="," data/country_stats.csv
awk 'BEGIN { max=0 } $10 > max { max=$10; name=$10 } END { print name }' FS="," data/Video_Games_Sales_as_at_22_Dec_2016.csv
