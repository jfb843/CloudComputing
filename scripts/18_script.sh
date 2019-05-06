awk 'BEGIN { max=0 } $6 > max { max=$6; name=$6 } END { print name }' FS="," data/Reviews.csv
awk 'BEGIN { max=0 } $2 > max { max=$2; name=$2 } END { print name }' FS="," compiled_data/Iris-merged.csv
awk 'BEGIN { min=1000000 } $5 < min { min=$5; name=$5 } END { print name }' FS="," data/speakers_all.csv
grep "LON" data/isd-history.csv
sort --field-separator="," --key=9 data/UserAnimeList.csv
sort --field-separator="," --key=1 data/users_cleaned.csv
