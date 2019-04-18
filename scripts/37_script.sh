awk 'BEGIN { max=0 } $6 > max { max=$6; name=$6 } END { print name }' FS="," data/anime_filtered.csv
sort --field-separator="," --key=1 data/falldeteciton.csv
