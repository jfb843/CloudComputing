awk 'BEGIN { min=1000000 } $8 < min { min=$8; name=$8 } END { print name }' FS="," compiled_data/googleplaystore-merged.csv
awk 'BEGIN { min=1000000 } $10 < min { min=$10; name=$10 } END { print name }' FS="," compiled_data/googleplaystore-merged.csv
sort --field-separator="," --key=5 data/UserList.csv
awk 'BEGIN { min=1000000 } $63 < min { min=$63; name=$63 } END { print name }' FS="," compiled_data/2007_data-merged.csv
sort --field-separator="," --key=3 data/HAM10000_metadata.csv
awk 'BEGIN { min=1000000 } $50 < min { min=$50; name=$50 } END { print name }' FS="," data/2014_data.csv
