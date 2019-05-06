awk 'BEGIN { max=0 } $13 > max { max=$13; name=$13 } END { print name }' FS="," compiled_data/parking-citations-merged.csv
awk 'BEGIN { min=1000000 } $15 < min { min=$15; name=$15 } END { print name }' FS="," data/UserList.csv
sort --field-separator="," --key=4 data/Checkouts_By_Title_Data_Lens_2005.csv
awk 'BEGIN { max=0 } $10 > max { max=$10; name=$10 } END { print name }' FS="," data/UserList.csv
grep record_condition_13 data/2010_data.csv
