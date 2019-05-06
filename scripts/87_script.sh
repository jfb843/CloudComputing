awk 'BEGIN { max=0 } $7 > max { max=$7; name=$7 } END { print name }' FS="," data/parking-citations.csv
grep ItemCount compiled_data/library-collection-inventory-merged.csv
sort --field-separator="," --key=9 data/movies_metadata.csv
awk 'BEGIN { min=1000000 } $13 < min { min=$13; name=$13 } END { print name }' FS="," data/winemag-data-130k-v2.csv
grep "V19" data/creditcard.csv
sort --field-separator="," --key=69 compiled_data/2005_data-merged.csv
