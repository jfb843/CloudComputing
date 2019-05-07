awk 'BEGIN { max=0 } $20 > max { max=$20; name=$20 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/movies_metadata-merged.csv
awk 'BEGIN { max=0 } $10 > max { max=$10; name=$10 } END { print name }' FS="," /home/hhan16/CloudComputing/data/adult.csv
awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/falldeteciton-merged.csv
sort --field-separator="," --key=2 /home/hhan16/CloudComputing/compiled_data/austria-merged.csv
awk 'BEGIN { min=1000000 } $26 < min { min=$26; name=$26 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/2015_data-merged.csv
awk 'BEGIN { max=0 } $37 > max { max=$37; name=$37 } END { print name }' FS="," /home/hhan16/CloudComputing/data/2015_data.csv
awk 'BEGIN { min=1000000 } $11 < min { min=$11; name=$11 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/users_cleaned-merged.csv
