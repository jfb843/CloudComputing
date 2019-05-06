awk 'BEGIN { min=1000000 } $5 < min { min=$5; name=$5 } END { print name }' FS="," data/winemag-data-130k-v2.csv
awk 'BEGIN { min=1000000 } $5 < min { min=$5; name=$5 } END { print name }' FS="," data/athlete_events.csv
awk 'BEGIN { min=1000000 } $11 < min { min=$11; name=$11 } END { print name }' FS="," data/movies_metadata.csv
awk 'BEGIN { max=0 } $4 > max { max=$4; name=$4 } END { print name }' FS="," data/googleplaystore.csv
awk 'BEGIN { min=1000000 } $59 < min { min=$59; name=$59 } END { print name }' FS="," compiled_data/2005_data-merged.csv
