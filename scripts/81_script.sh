awk 'BEGIN { max=0 } $8 > max { max=$8; name=$8 } END { print name }' FS="," compiled_data/anime_filtered-merged.csv
sort --field-separator="," --key=8 compiled_data/Reviews-merged.csv
awk 'BEGIN { min=1000000 } $18 < min { min=$18; name=$18 } END { print name }' FS="," data/movies_metadata.csv
awk 'BEGIN { min=1000000 } $9 < min { min=$9; name=$9 } END { print name }' FS="," compiled_data/Reviews-merged.csv
awk 'BEGIN { min=1000000 } $4 < min { min=$4; name=$4 } END { print name }' FS="," data/athlete_events.csv
sort --field-separator="," --key=2 compiled_data/2015-merged.csv
