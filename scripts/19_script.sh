awk 'BEGIN { min=1000000 } $15 < min { min=$15; name=$15 } END { print name }' FS="," compiled_data/parking-citations-merged.csv
grep Dribbling compiled_data/data-merged.csv
sort --field-separator="," --key=5 compiled_data/country_stats-merged.csv
awk 'BEGIN { min=1000000 } $5 < min { min=$5; name=$5 } END { print name }' FS="," compiled_data/IRAhandle_tweets_10-merged.csv
awk 'BEGIN { max=0 } $17 > max { max=$17; name=$17 } END { print name }' FS="," compiled_data/AnimeList-merged.csv
grep infant_age_recode_22 data/2012_data.csv
