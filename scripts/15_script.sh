awk 'BEGIN { min=1000000 } $6 < min { min=$6; name=$6 } END { print name }' FS="," /home/hhan16/CloudComputing/data/cv-invalid.csv
awk 'BEGIN { min=1000000 } $16 < min { min=$16; name=$16 } END { print name }' FS="," /home/hhan16/CloudComputing/data/users_cleaned.csv
sort --field-separator="," --key=22 /home/hhan16/CloudComputing/compiled_data/2015_data-merged.csv
grep method_of_disposition /home/hhan16/CloudComputing/compiled_data/2013_data-merged.csv
awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," /home/hhan16/CloudComputing/data/Iris.csv
awk 'BEGIN { max=0 } $1 > max { max=$1; name=$1 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/checkouts-by-title-merged.csv
sort --field-separator="," --key=25 /home/hhan16/CloudComputing/compiled_data/anime_cleaned-merged.csv
