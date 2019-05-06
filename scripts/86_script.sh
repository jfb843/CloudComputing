awk 'BEGIN { min=1000000 } $4 < min { min=$4; name=$4 } END { print name }' FS="," compiled_data/2015-merged.csv
awk 'BEGIN { max=0 } $7 > max { max=$7; name=$7 } END { print name }' FS="," compiled_data/Reviews-merged.csv
grep rank compiled_data/anime_filtered-merged.csv
awk 'BEGIN { min=1000000 } $16 < min { min=$16; name=$16 } END { print name }' FS="," data/nyc-rolling-sales.csv
sort --field-separator="," --key=14 compiled_data/2005_data-merged.csv
sort --field-separator="," --key=106 compiled_data/loan-merged.csv
awk 'BEGIN { max=0 } $25 > max { max=$25; name=$25 } END { print name }' FS="," data/creditcard.csv
