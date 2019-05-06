awk 'BEGIN { max=0 } $6 > max { max=$6; name=$6 } END { print name }' FS="," data/falldeteciton.csv
grep instanceUID compiled_data/CrowdsCureCancer2017Annotations-merged.csv
sort --field-separator="," --key=26 compiled_data/anime_filtered-merged.csv
awk 'BEGIN { max=0 } $28 > max { max=$28; name=$28 } END { print name }' FS="," compiled_data/anime_filtered-merged.csv
