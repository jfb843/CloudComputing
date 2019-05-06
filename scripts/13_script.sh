grep age_recode_52 compiled_data/mortality-merged.csv
awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," compiled_data/isd-history-merged.csv
awk 'BEGIN { max=0 } $27 > max { max=$27; name=$27 } END { print name }' FS="," compiled_data/2011_data-merged.csv
grep birth_date data/users_cleaned.csv
