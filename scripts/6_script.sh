grep ProfileName data/Reviews.csv
awk 'BEGIN { max=0 } $39 > max { max=$39; name=$39 } END { print name }' FS="," compiled_data/2006_data-merged.csv
awk 'BEGIN { min=1000000 } $3 < min { min=$3; name=$3 } END { print name }' FS="," compiled_data/player_data-merged.csv
awk 'BEGIN { max=0 } $6 > max { max=$6; name=$6 } END { print name }' FS="," compiled_data/country_stats-merged.csv
awk 'BEGIN { min=1000000 } $53 < min { min=$53; name=$53 } END { print name }' FS="," data/2010_data.csv
