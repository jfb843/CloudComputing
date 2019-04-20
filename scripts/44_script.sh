awk 'BEGIN { min=1000000 } $0 < min { min=$0; name=$0 } END { print name }' FS="," data/emails.csv
