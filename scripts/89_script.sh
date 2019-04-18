awk 'BEGIN { max=0 } $0 > max { max=$0; name=$0 } END { print name }' FS="," compiled_data/UserList-merged.csv
awk 'BEGIN { min=1000000 } $4 < min { min=$4; name=$4 } END { print name }' FS="," compiled_data/Reviews-merged.csv
awk 'BEGIN { min=1000000 } $4 < min { min=$4; name=$4 } END { print name }' FS="," data/column_2C_weka.csv
