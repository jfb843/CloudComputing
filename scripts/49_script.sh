awk 'BEGIN { min=1000000 } $13 < min { min=$13; name=$13 } END { print name }' FS="," compiled_data/Iowa_Liquor_Sales-merged.csv
grep my_rewatching_ep compiled_data/UserAnimeList-merged.csv
awk 'BEGIN { max=0 } $8 > max { max=$8; name=$8 } END { print name }' FS="," compiled_data/animelists_cleaned-merged.csv
grep "CTRY" data/isd-history.csv
sort --field-separator="," --key=6 data/IRAhandle_tweets_10.csv
sort --field-separator="," --key=1 compiled_data/player_data-merged.csv
awk 'BEGIN { max=0 } $7 > max { max=$7; name=$7 } END { print name }' FS="," data/Iowa_Liquor_Sales.csv
