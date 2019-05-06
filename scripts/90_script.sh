grep Genres data/googleplaystore.csv
awk 'BEGIN { max=0 } $19 > max { max=$19; name=$19 } END { print name }' FS="," data/movies_metadata.csv
awk 'BEGIN { max=0 } $26 > max { max=$26; name=$26 } END { print name }' FS="," data/anime_cleaned.csv
awk 'BEGIN { max=0 } $1 > max { max=$1; name=$1 } END { print name }' FS="," data/falldeteciton.csv
grep homepage data/movies_metadata.csv
