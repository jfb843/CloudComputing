awk 'BEGIN { min=1000000 } $0 < min { min=$0; name=$0 } END { print name }' FS="," data/bitcoin_cash_price.csv
sort --field-separator="," --key=20 data/2008_data.csv
