grep Open /home/hhan16/CloudComputing/compiled_data/bitcoin_cash_price-merged.csv
awk 'BEGIN { min=1000000 } $36 < min { min=$36; name=$36 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/2011_data-merged.csv
awk 'BEGIN { min=1000000 } $70 < min { min=$70; name=$70 } END { print name }' FS="," /home/hhan16/CloudComputing/data/2015_data.csv
sort --field-separator="," --key=4 /home/hhan16/CloudComputing/compiled_data/googleplaystore-merged.csv
awk 'BEGIN { max=0 } $6 > max { max=$6; name=$6 } END { print name }' FS="," /home/hhan16/CloudComputing/data/cv-invalid.csv
grep my_rewatching_ep /home/hhan16/CloudComputing/data/animelists_filtered.csv
