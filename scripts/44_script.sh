grep Publisher /home/hhan16/CloudComputing/data/checkouts-by-title.csv
awk 'BEGIN { min=1000000 } $47 < min { min=$47; name=$47 } END { print name }' FS="," /home/hhan16/CloudComputing/data/2008_data.csv
awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," /home/hhan16/CloudComputing/data/UserAnimeList.csv
awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," /home/hhan16/CloudComputing/data/2012_data.csv
sort --field-separator="," --key=9 /home/hhan16/CloudComputing/compiled_data/animelists_cleaned-merged.csv
