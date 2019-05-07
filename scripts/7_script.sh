grep record_condition_12 /home/hhan16/CloudComputing/data/2014_data.csv
grep Bottle Volume (ml) /home/hhan16/CloudComputing/compiled_data/Iowa_Liquor_Sales-merged.csv
sort --field-separator="," --key=64 /home/hhan16/CloudComputing/compiled_data/2010_data-merged.csv
sort --field-separator="," --key=8 /home/hhan16/CloudComputing/data/Iowa_Liquor_Sales.csv
awk 'BEGIN { max=0 } $6 > max { max=$6; name=$6 } END { print name }' FS="," /home/hhan16/CloudComputing/data/IRAhandle_tweets_10.csv
sort --field-separator="," --key=2 /home/hhan16/CloudComputing/data/country_stats.csv
