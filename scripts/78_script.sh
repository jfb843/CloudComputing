awk 'BEGIN { max=0 } $2 > max { max=$2; name=$2 } END { print name }' FS="," data/parking-citations.csv
awk 'BEGIN { min=1000000 } $7 < min { min=$7; name=$7 } END { print name }' FS="," data/austria.csv
awk 'BEGIN { max=0 } $7 > max { max=$7; name=$7 } END { print name }' FS="," data/austria.csv
sort --field-separator="," --key=1 compiled_data/emails-merged.csv
sort --field-separator="," --key=8 data/indian_liver_patient.csv
