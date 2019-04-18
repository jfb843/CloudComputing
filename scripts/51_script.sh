awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," data/IRAhandle_tweets_10.csv
awk 'BEGIN { min=1000000 } $10 < min { min=$10; name=$10 } END { print name }' FS="," data/animelists_cleaned.csv
