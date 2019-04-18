awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," data/bitcoin_cash_price.csv
sort --field-separator="," --key=11 compiled_data/2015-merged.csv
