awk 'BEGIN { min=1000000 } $3 < min { min=$3; name=$3 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/users_filtered-merged.csv
awk 'BEGIN { min=1000000 } $6 < min { min=$6; name=$6 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/bitcoin_cash_price-merged.csv
awk 'BEGIN { max=0 } $8 > max { max=$8; name=$8 } END { print name }' FS="," /home/hhan16/CloudComputing/data/isd-history.csv
grep accent /home/hhan16/CloudComputing/data/cv-invalid.csv
sort --field-separator="," --key=22 /home/hhan16/CloudComputing/compiled_data/Iowa_Liquor_Sales-merged.csv
awk 'BEGIN { min=1000000 } $26 < min { min=$26; name=$26 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/AnimeList-merged.csv
