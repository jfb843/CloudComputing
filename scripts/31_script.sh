awk 'BEGIN { max=0 } $13 > max { max=$13; name=$13 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/UserList-merged.csv
sort --field-separator="," --key=20 /home/hhan16/CloudComputing/data/AnimeList.csv
awk 'BEGIN { max=0 } $19 > max { max=$19; name=$19 } END { print name }' FS="," /home/hhan16/CloudComputing/data/IRAhandle_tweets_10.csv
grep  /home/hhan16/CloudComputing/data/speakers_all.csv
grep Bottles Sold /home/hhan16/CloudComputing/data/Iowa_Liquor_Sales.csv
grep Species /home/hhan16/CloudComputing/data/Iris.csv
