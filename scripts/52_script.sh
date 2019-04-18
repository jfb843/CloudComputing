awk 'BEGIN { min=1000000 } $16 < min { min=$16; name=$16 } END { print name }' FS="," data/users_filtered.csv
