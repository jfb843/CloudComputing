sort --field-separator="," --key=18 data/anime_filtered.csv
awk 'BEGIN { max=0 } $0 > max { max=$0; name=$0 } END { print name }' FS="," data/library-collection-inventory.csv
