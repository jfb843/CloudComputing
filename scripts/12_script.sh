awk 'BEGIN { max=0 } $9 > max { max=$9; name=$9 } END { print name }' FS="," compiled_data/country_stats-merged.csv
awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," data/player_data.csv
awk 'BEGIN { min=1000000 } $5 < min { min=$5; name=$5 } END { print name }' FS="," data/IRAhandle_tweets_10.csv
