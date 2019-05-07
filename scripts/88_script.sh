sort --field-separator="," --key=5 /home/hhan16/CloudComputing/compiled_data/HAM10000_metadata-merged.csv
awk 'BEGIN { min=1000000 } $21 < min { min=$21; name=$21 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/anime_filtered-merged.csv
awk 'BEGIN { max=0 } $9 > max { max=$9; name=$9 } END { print name }' FS="," /home/hhan16/CloudComputing/data/anime_cleaned.csv
sort --field-separator="," --key=6 /home/hhan16/CloudComputing/data/falldeteciton.csv
grep "message" /home/hhan16/CloudComputing/compiled_data/emails-merged.csv
