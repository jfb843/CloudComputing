awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/data/bitcoin_cash_price.csv
sort --field-separator="," --key=11 /home/hhan16/CloudComputing/compiled_data/athlete_events-merged.csv
grep date_unix /home/hhan16/CloudComputing/compiled_data/CrowdsCureCancer2017Annotations-merged.csv
sort --field-separator="," --key=4 /home/hhan16/CloudComputing/compiled_data/loan-merged.csv
