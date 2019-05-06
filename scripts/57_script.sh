sort --field-separator="," --key=4 compiled_data/IRAhandle_tweets_10-merged.csv
awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," compiled_data/indian_liver_patient-merged.csv
awk 'BEGIN { min=1000000 } $42 < min { min=$42; name=$42 } END { print name }' FS="," data/2010_data.csv
awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," compiled_data/player_data-merged.csv
sort --field-separator="," --key=2 compiled_data/UserList-merged.csv
awk 'BEGIN { max=0 } $33 > max { max=$33; name=$33 } END { print name }' FS="," data/2014_data.csv
awk 'BEGIN { min=1000000 } $3 < min { min=$3; name=$3 } END { print name }' FS="," compiled_data/falldeteciton-merged.csv
