grep Subjects /home/hhan16/CloudComputing/data/library-collection-inventory.csv
grep Type /home/hhan16/CloudComputing/data/googleplaystore.csv
awk 'BEGIN { min=1000000 } $19 < min { min=$19; name=$19 } END { print name }' FS="," /home/hhan16/CloudComputing/data/movies_metadata.csv
awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," /home/hhan16/CloudComputing/data/emails.csv
awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/emails-merged.csv
sort --field-separator="," --key=3 /home/hhan16/CloudComputing/compiled_data/Reviews-merged.csv
