awk 'BEGIN { max=0 } $6 > max { max=$6; name=$6 } END { print name }' FS="," /home/hhan16/CloudComputing/data/Reviews.csv
awk 'BEGIN { max=0 } $2 > max { max=$2; name=$2 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/Iris-merged.csv
awk 'BEGIN { min=1000000 } $5 < min { min=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/data/speakers_all.csv
grep "LON" /home/hhan16/CloudComputing/data/isd-history.csv
sort --field-separator="," --key=9 /home/hhan16/CloudComputing/data/UserAnimeList.csv
sort --field-separator="," --key=1 /home/hhan16/CloudComputing/data/users_cleaned.csv
