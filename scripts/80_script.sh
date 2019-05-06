sort --field-separator="," --key=9 data/athlete_events.csv
awk 'BEGIN { max=0 } $12 > max { max=$12; name=$12 } END { print name }' FS="," compiled_data/athlete_events-merged.csv
awk 'BEGIN { max=0 } $11 > max { max=$11; name=$11 } END { print name }' FS="," compiled_data/library-collection-inventory-merged.csv
awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," data/emails.csv
awk 'BEGIN { min=1000000 } $6 < min { min=$6; name=$6 } END { print name }' FS="," compiled_data/athlete_events-merged.csv
grep my_status data/animelists_cleaned.csv
awk 'BEGIN { min=1000000 } $42 < min { min=$42; name=$42 } END { print name }' FS="," data/2013_data.csv
