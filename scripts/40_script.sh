sort --field-separator="," --key=13 /home/hhan16/CloudComputing/data/users_cleaned.csv
grep "LAT" /home/hhan16/CloudComputing/compiled_data/isd-history-merged.csv
sort --field-separator="," --key=2 /home/hhan16/CloudComputing/compiled_data/indian_liver_patient-merged.csv
awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/falldeteciton-merged.csv
grep entity_condition_16 /home/hhan16/CloudComputing/data/2014_data.csv
grep Positioning /home/hhan16/CloudComputing/data/data.csv
