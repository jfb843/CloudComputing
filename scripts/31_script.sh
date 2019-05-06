awk 'BEGIN { max=0 } $13 > max { max=$13; name=$13 } END { print name }' FS="," compiled_data/UserList-merged.csv
sort --field-separator="," --key=20 data/AnimeList.csv
awk 'BEGIN { max=0 } $19 > max { max=$19; name=$19 } END { print name }' FS="," data/IRAhandle_tweets_10.csv
grep  data/speakers_all.csv
grep Bottles Sold data/Iowa_Liquor_Sales.csv
grep Species data/Iris.csv
