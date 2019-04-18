awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," compiled_data/bitcoin_cash_price-merged.csv
awk 'BEGIN { min=1000000 } $6 < min { min=$6; name=$6 } END { print name }' FS="," data/cv-invalid.csv
