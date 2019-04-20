awk 'BEGIN { min=1000000 } $65 < min { min=$65; name=$65 } END { print name }' FS="," compiled_data/2007_data-merged.csv
awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," data/indian_liver_patient.csv
awk 'BEGIN { min=1000000 } $16 < min { min=$16; name=$16 } END { print name }' FS="," compiled_data/2011_data-merged.csv
