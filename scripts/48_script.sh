awk 'BEGIN { max=0 } $74 > max { max=$74; name=$74 } END { print name }' FS="," data/2015_data.csv
awk 'BEGIN { min=1000000 } $15 < min { min=$15; name=$15 } END { print name }' FS="," compiled_data/mortality-merged.csv
grep record_condition_2 compiled_data/2010_data-merged.csv
sort --field-separator="," --key=1 data/UserList.csv
sort --field-separator="," --key=7 compiled_data/animelists_cleaned-merged.csv
