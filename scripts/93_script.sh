sort --field-separator="," --key=8 compiled_data/library-collection-inventory-merged.csv
awk 'BEGIN { max=0 } $2 > max { max=$2; name=$2 } END { print name }' FS="," data/animelists_cleaned.csv
grep accent compiled_data/cv-invalid-merged.csv
sort --field-separator="," --key=5 compiled_data/2015-merged.csv
awk 'BEGIN { min=1000000 } $10 < min { min=$10; name=$10 } END { print name }' FS="," data/indian_liver_patient.csv
awk 'BEGIN { max=0 } $17 > max { max=$17; name=$17 } END { print name }' FS="," data/creditcard.csv
