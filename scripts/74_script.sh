awk 'BEGIN { max=0 } $0 > max { max=$0; name=$0 } END { print name }' FS="," data/bitcoin_cash_price.csv
awk 'BEGIN { min=1000000 } $6 < min { min=$6; name=$6 } END { print name }' FS="," compiled_data/CrowdsCureCancer2017Annotations-merged.csv
