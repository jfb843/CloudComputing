grep Subjects data/library-collection-inventory.csv
grep Type data/googleplaystore.csv
awk 'BEGIN { min=1000000 } $19 < min { min=$19; name=$19 } END { print name }' FS="," data/movies_metadata.csv
awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," data/emails.csv
awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," compiled_data/emails-merged.csv
sort --field-separator="," --key=3 compiled_data/Reviews-merged.csv
