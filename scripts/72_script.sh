awk 'BEGIN { min=1000000 } $5 < min { min=$5; name=$5 } END { print name }' FS="," compiled_data/indian_liver_patient-merged.csv
