awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," data/cv-invalid.csv
sort --field-separator="," --key=4 compiled_data/Iris-merged.csv
grep my_start_date data/UserAnimeList.csv
awk 'BEGIN { min=1000000 } $10 < min { min=$10; name=$10 } END { print name }' FS="," data/country_stats.csv
sort --field-separator="," --key=6 data/player_data.csv
