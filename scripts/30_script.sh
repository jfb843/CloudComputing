sort --field-separator="," --key=3 data/UserList.csv
awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," compiled_data/animelists_filtered-merged.csv
awk 'BEGIN { min=1000000 } $3 < min { min=$3; name=$3 } END { print name }' FS="," data/Checkouts_By_Title_Data_Lens_2005.csv
sort --field-separator="," --key=9 compiled_data/animelists_filtered-merged.csv
awk 'BEGIN { min=1000000 } $23 < min { min=$23; name=$23 } END { print name }' FS="," data/AnimeList.csv
grep record_condition_1 compiled_data/2007_data-merged.csv
