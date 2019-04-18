awk 'BEGIN { max=0 } $0 > max { max=$0; name=$0 } END { print name }' FS="," data/UserList.csv
awk 'BEGIN { min=1000000 } $9 < min { min=$9; name=$9 } END { print name }' FS="," data/speakers_all.csv
sort --field-separator="," --key=33 compiled_data/data-merged.csv
