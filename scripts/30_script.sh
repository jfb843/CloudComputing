sort --field-separator="," --key=3 /home/hhan16/CloudComputing/data/UserList.csv
awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/animelists_filtered-merged.csv
awk 'BEGIN { min=1000000 } $3 < min { min=$3; name=$3 } END { print name }' FS="," /home/hhan16/CloudComputing/data/Checkouts_By_Title_Data_Lens_2005.csv
sort --field-separator="," --key=9 /home/hhan16/CloudComputing/compiled_data/animelists_filtered-merged.csv
awk 'BEGIN { min=1000000 } $23 < min { min=$23; name=$23 } END { print name }' FS="," /home/hhan16/CloudComputing/data/AnimeList.csv
grep record_condition_1 /home/hhan16/CloudComputing/compiled_data/2007_data-merged.csv
