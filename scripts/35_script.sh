awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," /home/hhan16/CloudComputing/data/Iowa_Liquor_Sales.csv
awk 'BEGIN { min=1000000 } $7 < min { min=$7; name=$7 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/Iowa_Liquor_Sales-merged.csv
awk 'BEGIN { min=1000000 } $8 < min { min=$8; name=$8 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/2008_data-merged.csv
awk 'BEGIN { min=1000000 } $5 < min { min=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/data/isd-history.csv
awk 'BEGIN { min=1000000 } $4 < min { min=$4; name=$4 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/IRAhandle_tweets_10-merged.csv
awk 'BEGIN { max=0 } $1 > max { max=$1; name=$1 } END { print name }' FS="," /home/hhan16/CloudComputing/data/country_stats.csv
