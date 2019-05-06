awk 'BEGIN { min=1000000 } $41 < min { min=$41; name=$41 } END { print name }' FS="," data/2015_data.csv
grep premiered data/anime_filtered.csv
awk 'BEGIN { min=1000000 } $62 < min { min=$62; name=$62 } END { print name }' FS="," compiled_data/mortality-merged.csv
sort --field-separator="," --key=4 compiled_data/Checkouts_By_Title_Data_Lens_2005-merged.csv
awk 'BEGIN { max=0 } $2 > max { max=$2; name=$2 } END { print name }' FS="," data/2015.csv
sort --field-separator="," --key=9 data/UserAnimeList.csv
