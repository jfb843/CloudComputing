sort --field-separator="," --key=9 data/indian_liver_patient.csv
awk 'BEGIN { min=1000000 } $8 < min { min=$8; name=$8 } END { print name }' FS="," data/indian_liver_patient.csv
