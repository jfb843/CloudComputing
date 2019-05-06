sort --field-separator="," --key=3 compiled_data/UserList-merged.csv
sort --field-separator="," --key=10 data/adult.csv
grep entity_condition_16 compiled_data/2007_data-merged.csv
awk 'BEGIN { max=0 } $10 > max { max=$10; name=$10 } END { print name }' FS="," compiled_data/movies_metadata-merged.csv
