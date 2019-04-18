awk 'BEGIN { max=0 } $10 > max { max=$10; name=$10 } END { print name }' FS="," compiled_data/IRAhandle_tweets_10-merged.csv
