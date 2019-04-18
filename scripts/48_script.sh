awk 'BEGIN { min=1000000 } $3 < min { min=$3; name=$3 } END { print name }' FS="," data/AnimeList.csv
sort --field-separator="," --key=13 compiled_data/2011_data-merged.csv
awk 'BEGIN { min=1000000 } $54 < min { min=$54; name=$54 } END { print name }' FS="," data/data.csv
