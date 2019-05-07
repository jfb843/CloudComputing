awk 'BEGIN { max=0 } $6 > max { max=$6; name=$6 } END { print name }' FS="," /home/hhan16/CloudComputing/data/falldeteciton.csv
grep instanceUID /home/hhan16/CloudComputing/compiled_data/CrowdsCureCancer2017Annotations-merged.csv
sort --field-separator="," --key=26 /home/hhan16/CloudComputing/compiled_data/anime_filtered-merged.csv
awk 'BEGIN { max=0 } $28 > max { max=$28; name=$28 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/anime_filtered-merged.csv
