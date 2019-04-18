awk 'BEGIN { max=0 } $8 > max { max=$8; name=$8 } END { print name }' FS="," compiled_data/UserAnimeList-merged.csv
awk 'BEGIN { max=0 } $6 > max { max=$6; name=$6 } END { print name }' FS="," data/austria.csv
awk 'BEGIN { min=1000000 } $13 < min { min=$13; name=$13 } END { print name }' FS="," data/athlete_events.csv
