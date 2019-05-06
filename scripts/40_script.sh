sort --field-separator="," --key=13 data/users_cleaned.csv
grep "LAT" compiled_data/isd-history-merged.csv
sort --field-separator="," --key=2 compiled_data/indian_liver_patient-merged.csv
awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," compiled_data/falldeteciton-merged.csv
grep entity_condition_16 data/2014_data.csv
grep Positioning data/data.csv
