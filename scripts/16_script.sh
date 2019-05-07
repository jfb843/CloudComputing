sort --field-separator="," --key=1 /home/hhan16/CloudComputing/data/isd-history.csv
awk 'BEGIN { min=1000000 } $19 < min { min=$19; name=$19 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/AnimeList-merged.csv
grep sex /home/hhan16/CloudComputing/data/2012_data.csv
awk 'BEGIN { min=1000000 } $26 < min { min=$26; name=$26 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/2009_data-merged.csv
sort --field-separator="," --key=5 /home/hhan16/CloudComputing/data/Reviews.csv
awk 'BEGIN { max=0 } $1 > max { max=$1; name=$1 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/googleplaystore-merged.csv
awk 'BEGIN { min=1000000 } $5 < min { min=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/austria-merged.csv
