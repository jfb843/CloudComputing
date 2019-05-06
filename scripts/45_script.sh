grep Open compiled_data/bitcoin_cash_price-merged.csv
awk 'BEGIN { min=1000000 } $36 < min { min=$36; name=$36 } END { print name }' FS="," compiled_data/2011_data-merged.csv
awk 'BEGIN { min=1000000 } $70 < min { min=$70; name=$70 } END { print name }' FS="," data/2015_data.csv
sort --field-separator="," --key=4 compiled_data/googleplaystore-merged.csv
awk 'BEGIN { max=0 } $6 > max { max=$6; name=$6 } END { print name }' FS="," data/cv-invalid.csv
grep my_rewatching_ep data/animelists_filtered.csv
