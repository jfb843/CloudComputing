awk 'BEGIN { min=1000000 } $64 < min { min=$64; name=$64 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/2006_data-merged.csv
awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," /home/hhan16/CloudComputing/data/Iris.csv
awk 'BEGIN { min=1000000 } $13 < min { min=$13; name=$13 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/2006_data-merged.csv
awk 'BEGIN { min=1000000 } $10 < min { min=$10; name=$10 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/animelists_cleaned-merged.csv
sort --field-separator="," --key=9 /home/hhan16/CloudComputing/data/AnimeList.csv
grep BP /home/hhan16/CloudComputing/compiled_data/falldeteciton-merged.csv
