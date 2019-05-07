sort --field-separator="," --key=8 /home/hhan16/CloudComputing/compiled_data/library-collection-inventory-merged.csv
awk 'BEGIN { max=0 } $2 > max { max=$2; name=$2 } END { print name }' FS="," /home/hhan16/CloudComputing/data/animelists_cleaned.csv
grep accent /home/hhan16/CloudComputing/compiled_data/cv-invalid-merged.csv
sort --field-separator="," --key=5 /home/hhan16/CloudComputing/compiled_data/2015-merged.csv
awk 'BEGIN { min=1000000 } $10 < min { min=$10; name=$10 } END { print name }' FS="," /home/hhan16/CloudComputing/data/indian_liver_patient.csv
awk 'BEGIN { max=0 } $17 > max { max=$17; name=$17 } END { print name }' FS="," /home/hhan16/CloudComputing/data/creditcard.csv
