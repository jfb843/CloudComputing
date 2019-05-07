awk 'BEGIN { max=0 } $2 > max { max=$2; name=$2 } END { print name }' FS="," /home/hhan16/CloudComputing/data/parking-citations.csv
awk 'BEGIN { min=1000000 } $7 < min { min=$7; name=$7 } END { print name }' FS="," /home/hhan16/CloudComputing/data/austria.csv
awk 'BEGIN { max=0 } $7 > max { max=$7; name=$7 } END { print name }' FS="," /home/hhan16/CloudComputing/data/austria.csv
sort --field-separator="," --key=1 /home/hhan16/CloudComputing/compiled_data/emails-merged.csv
sort --field-separator="," --key=8 /home/hhan16/CloudComputing/data/indian_liver_patient.csv
