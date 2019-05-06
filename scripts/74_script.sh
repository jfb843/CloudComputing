awk 'BEGIN { min=1000000 } $15 < min { min=$15; name=$15 } END { print name }' FS="," data/creditcard.csv
awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," data/library-collection-inventory.csv
awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," data/bitcoin_cash_price.csv
sort --field-separator="," --key=11 data/winemag-data-130k-v2.csv
awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," data/bitcoin_cash_price.csv
grep LOT data/nyc-rolling-sales.csv
