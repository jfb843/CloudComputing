grep record_condition_12 data/2014_data.csv
grep Bottle Volume (ml) compiled_data/Iowa_Liquor_Sales-merged.csv
sort --field-separator="," --key=64 compiled_data/2010_data-merged.csv
sort --field-separator="," --key=8 data/Iowa_Liquor_Sales.csv
awk 'BEGIN { max=0 } $6 > max { max=$6; name=$6 } END { print name }' FS="," data/IRAhandle_tweets_10.csv
sort --field-separator="," --key=2 data/country_stats.csv
