awk 'BEGIN { max=0 } $6 > max { max=$6; name=$6 } END { print name }' FS="," data/austria.csv
