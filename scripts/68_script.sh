awk 'BEGIN { max=0 } $50 > max { max=$50; name=$50 } END { print name }' FS="," data/data.csv
