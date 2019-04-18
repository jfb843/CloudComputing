awk 'BEGIN { min=1000000 } $37 < min { min=$37; name=$37 } END { print name }' FS="," compiled_data/2014_data-merged.csv
awk 'BEGIN { max=0 } $50 > max { max=$50; name=$50 } END { print name }' FS="," compiled_data/2005_data-merged.csv
awk 'BEGIN { max=0 } $2 > max { max=$2; name=$2 } END { print name }' FS="," data/indian_liver_patient.csv
