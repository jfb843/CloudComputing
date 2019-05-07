awk 'BEGIN { min=1000000 } $15 < min { min=$15; name=$15 } END { print name }' FS="," /home/hhan16/CloudComputing/data/creditcard.csv
awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/data/library-collection-inventory.csv
awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/data/bitcoin_cash_price.csv
sort --field-separator="," --key=11 /home/hhan16/CloudComputing/data/winemag-data-130k-v2.csv
awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," /home/hhan16/CloudComputing/data/bitcoin_cash_price.csv
grep LOT /home/hhan16/CloudComputing/data/nyc-rolling-sales.csv
