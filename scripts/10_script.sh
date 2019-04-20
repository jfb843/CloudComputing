awk 'BEGIN { max=0 } $4 > max { max=$4; name=$4 } END { print name }' FS="," data/athlete_events.csv
awk 'BEGIN { max=0 } $2 > max { max=$2; name=$2 } END { print name }' FS="," data/athlete_events.csv
awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," data/austria.csv
