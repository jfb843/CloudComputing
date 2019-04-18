sort --field-separator="," --key=52 data/2011_data.csv
awk 'BEGIN { max=0 } $58 > max { max=$58; name=$58 } END { print name }' FS="," data/2009_data.csv
sort --field-separator="," --key=7 compiled_data/winemag-data-130k-v2-merged.csv
