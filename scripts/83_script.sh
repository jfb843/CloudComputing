awk 'BEGIN { max=0 } $44 > max { max=$44; name=$44 } END { print name }' FS="," data/2011_data.csv
