awk 'BEGIN { max=0 } $1 > max { max=$1; name=$1 } END { print name }' FS="," compiled_data/HAM10000_metadata-merged.csv
sort --field-separator="," --key=3 compiled_data/2015-merged.csv
sort --field-separator="," --key=8 data/library-collection-inventory.csv
awk 'BEGIN { max=0 } $1 > max { max=$1; name=$1 } END { print name }' FS="," compiled_data/Reviews-merged.csv
sort --field-separator="," --key=71 data/2013_data.csv
grep HelpfulnessDenominator compiled_data/Reviews-merged.csv
