grep Genres /home/hhan16/CloudComputing/data/googleplaystore.csv
awk 'BEGIN { max=0 } $19 > max { max=$19; name=$19 } END { print name }' FS="," /home/hhan16/CloudComputing/data/movies_metadata.csv
awk 'BEGIN { max=0 } $26 > max { max=$26; name=$26 } END { print name }' FS="," /home/hhan16/CloudComputing/data/anime_cleaned.csv
awk 'BEGIN { max=0 } $1 > max { max=$1; name=$1 } END { print name }' FS="," /home/hhan16/CloudComputing/data/falldeteciton.csv
grep homepage /home/hhan16/CloudComputing/data/movies_metadata.csv
