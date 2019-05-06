awk 'BEGIN { min=1000000 } $7 < min { min=$7; name=$7 } END { print name }' FS="," data/animelists_filtered.csv
awk 'BEGIN { min=1000000 } $54 < min { min=$54; name=$54 } END { print name }' FS="," data/data.csv
grep premiered compiled_data/AnimeList-merged.csv
sort --field-separator="," --key=19 data/IRAhandle_tweets_10.csv
awk 'BEGIN { min=1000000 } $6 < min { min=$6; name=$6 } END { print name }' FS="," data/Iowa_Liquor_Sales.csv
awk 'BEGIN { max=0 } $75 > max { max=$75; name=$75 } END { print name }' FS="," compiled_data/data-merged.csv
awk 'BEGIN { max=0 } $4 > max { max=$4; name=$4 } END { print name }' FS="," compiled_data/Iris-merged.csv
