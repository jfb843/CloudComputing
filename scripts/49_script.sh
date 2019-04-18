awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," data/falldeteciton.csv
awk 'BEGIN { min=1000000 } $4 < min { min=$4; name=$4 } END { print name }' FS="," data/AnimeList.csv
