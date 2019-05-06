sort --field-separator="," --key=11 compiled_data/parking-citations-merged.csv
awk 'BEGIN { max=0 } $1 > max { max=$1; name=$1 } END { print name }' FS="," data/country_stats.csv
grep anime_id compiled_data/UserAnimeList-merged.csv
grep year_start data/player_data.csv
awk 'BEGIN { max=0 } $71 > max { max=$71; name=$71 } END { print name }' FS="," data/2008_data.csv
