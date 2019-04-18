awk 'BEGIN { min=1000000 } $15 < min { min=$15; name=$15 } END { print name }' FS="," compiled_data/CrowdsCureCancer2017Annotations-merged.csv
awk 'BEGIN { max=0 } $9 > max { max=$9; name=$9 } END { print name }' FS="," compiled_data/anime_filtered-merged.csv
sort --field-separator="," --key=5 data/bitcoin_cash_price.csv
