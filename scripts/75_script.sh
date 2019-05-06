awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," data/parking-citations.csv
awk 'BEGIN { min=1000000 } $18 < min { min=$18; name=$18 } END { print name }' FS="," data/nyc-rolling-sales.csv
awk 'BEGIN { min=1000000 } $10 < min { min=$10; name=$10 } END { print name }' FS="," data/library-collection-inventory.csv
awk 'BEGIN { max=0 } $8 > max { max=$8; name=$8 } END { print name }' FS="," compiled_data/athlete_events-merged.csv
awk 'BEGIN { max=0 } $1 > max { max=$1; name=$1 } END { print name }' FS="," data/bitcoin_cash_price.csv
awk 'BEGIN { min=1000000 } $42 < min { min=$42; name=$42 } END { print name }' FS="," compiled_data/loan-merged.csv
awk 'BEGIN { max=0 } $18 > max { max=$18; name=$18 } END { print name }' FS="," data/nyc-rolling-sales.csv
