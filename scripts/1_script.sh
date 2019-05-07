awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/isd-history-merged.csv
awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," /home/hhan16/CloudComputing/data/Iris.csv
grep High /home/hhan16/CloudComputing/compiled_data/bitcoin_cash_price-merged.csv
awk 'BEGIN { max=0 } $4 > max { max=$4; name=$4 } END { print name }' FS="," /home/hhan16/CloudComputing/data/cv-invalid.csv
awk 'BEGIN { max=0 } $16 > max { max=$16; name=$16 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/anime_cleaned-merged.csv
awk 'BEGIN { min=1000000 } $32 < min { min=$32; name=$32 } END { print name }' FS="," /home/hhan16/CloudComputing/data/2014_data.csv
