awk 'BEGIN { min=1000000 } $5 < min { min=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/falldeteciton-merged.csv
grep PublicationYear /home/hhan16/CloudComputing/data/checkouts-by-title.csv
grep  /home/hhan16/CloudComputing/compiled_data/speakers_all-merged.csv
awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/bitcoin_cash_price-merged.csv
awk 'BEGIN { max=0 } $2 > max { max=$2; name=$2 } END { print name }' FS="," /home/hhan16/CloudComputing/data/cv-invalid.csv
awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/animelists_cleaned-merged.csv
sort --field-separator="," --key=76 /home/hhan16/CloudComputing/data/2009_data.csv
