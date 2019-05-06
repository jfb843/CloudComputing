sort --field-separator="," --key=9 compiled_data/parking-citations-merged.csv
sort --field-separator="," --key=13 data/2010_data.csv
sort --field-separator="," --key=11 data/UserList.csv
sort --field-separator="," --key=11 compiled_data/adult-merged.csv
awk 'BEGIN { max=0 } $13 > max { max=$13; name=$13 } END { print name }' FS="," data/IRAhandle_tweets_10.csv
