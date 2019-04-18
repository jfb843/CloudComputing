awk 'BEGIN { max=0 } $10 > max { max=$10; name=$10 } END { print name }' FS="," data/indian_liver_patient.csv
awk 'BEGIN { max=0 } $9 > max { max=$9; name=$9 } END { print name }' FS="," data/2014_data.csv
awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," data/2010_data.csv
