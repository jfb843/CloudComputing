grep "message" /home/hhan16/CloudComputing/data/emails.csv
awk 'BEGIN { min=1000000 } $20 < min { min=$20; name=$20 } END { print name }' FS="," /home/hhan16/CloudComputing/data/movies_metadata.csv
awk 'BEGIN { min=1000000 } $3 < min { min=$3; name=$3 } END { print name }' FS="," /home/hhan16/CloudComputing/data/bitcoin_cash_price.csv
grep "V12" /home/hhan16/CloudComputing/data/creditcard.csv
