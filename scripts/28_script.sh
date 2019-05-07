awk 'BEGIN { min=1000000 } $16 < min { min=$16; name=$16 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/anime_cleaned-merged.csv
awk 'BEGIN { max=0 } $56 > max { max=$56; name=$56 } END { print name }' FS="," /home/hhan16/CloudComputing/data/2006_data.csv
awk 'BEGIN { min=1000000 } $6 < min { min=$6; name=$6 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/animelists_cleaned-merged.csv
awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/data/Iowa_Liquor_Sales.csv
grep PetalWidthCm /home/hhan16/CloudComputing/data/Iris.csv
sort --field-separator="," --key=3 /home/hhan16/CloudComputing/data/users_filtered.csv
