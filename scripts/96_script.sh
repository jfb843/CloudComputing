awk 'BEGIN { max=0 } $39 > max { max=$39; name=$39 } END { print name }' FS="," /home/hhan16/CloudComputing/data/2013_data.csv
awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," /home/hhan16/CloudComputing/data/emails.csv
awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/Reviews-merged.csv
awk 'BEGIN { min=1000000 } $54 < min { min=$54; name=$54 } END { print name }' FS="," /home/hhan16/CloudComputing/data/2013_data.csv
grep "Event" /home/hhan16/CloudComputing/compiled_data/athlete_events-merged.csv
awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," /home/hhan16/CloudComputing/data/indian_liver_patient.csv
sort --field-separator="," --key=31 /home/hhan16/CloudComputing/data/anime_cleaned.csv
