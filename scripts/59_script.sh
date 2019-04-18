awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," data/UserList.csv
