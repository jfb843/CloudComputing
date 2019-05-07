awk 'BEGIN { min=1000000 } $41 < min { min=$41; name=$41 } END { print name }' FS="," /home/hhan16/CloudComputing/data/2015_data.csv
grep premiered /home/hhan16/CloudComputing/data/anime_filtered.csv
awk 'BEGIN { min=1000000 } $62 < min { min=$62; name=$62 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/mortality-merged.csv
sort --field-separator="," --key=4 /home/hhan16/CloudComputing/compiled_data/Checkouts_By_Title_Data_Lens_2005-merged.csv
awk 'BEGIN { max=0 } $2 > max { max=$2; name=$2 } END { print name }' FS="," /home/hhan16/CloudComputing/data/2015.csv
sort --field-separator="," --key=9 /home/hhan16/CloudComputing/data/UserAnimeList.csv
