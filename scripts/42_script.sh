sort --field-separator="," --key=3 compiled_data/bitcoin_cash_price-merged.csv
awk 'BEGIN { max=0 } $0 > max { max=$0; name=$0 } END { print name }' FS="," data/emails.csv
