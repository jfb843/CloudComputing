sort --field-separator="," --key=3 compiled_data/animelists_filtered-merged.csv
sort --field-separator="," --key=55 data/2008_data.csv
awk 'BEGIN { min=1000000 } $20 < min { min=$20; name=$20 } END { print name }' FS="," compiled_data/data-merged.csv
awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," data/Iris.csv
grep user_completed compiled_data/users_cleaned-merged.csv
sort --field-separator="," --key=15 compiled_data/IRAhandle_tweets_10-merged.csv
awk 'BEGIN { min=1000000 } $14 < min { min=$14; name=$14 } END { print name }' FS="," data/users_filtered.csv
