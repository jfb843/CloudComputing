awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," data/bitcoin_cash_price.csv
sort --field-separator="," --key=11 compiled_data/athlete_events-merged.csv
grep date_unix compiled_data/CrowdsCureCancer2017Annotations-merged.csv
sort --field-separator="," --key=4 compiled_data/loan-merged.csv
