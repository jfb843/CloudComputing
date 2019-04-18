awk 'BEGIN { max=0 } $1 > max { max=$1; name=$1 } END { print name }' FS="," compiled_data/2015-merged.csv
sort --field-separator="," --key=51 data/2008_data.csv
