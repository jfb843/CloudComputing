awk 'BEGIN { min=1000000 } $3 < min { min=$3; name=$3 } END { print name }' FS="," data/creditcard.csv
