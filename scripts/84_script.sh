sort --field-separator="," --key=8 /home/hhan16/CloudComputing/data/library-collection-inventory.csv
awk 'BEGIN { max=0 } $11 > max { max=$11; name=$11 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/athlete_events-merged.csv
awk 'BEGIN { min=1000000 } $5 < min { min=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/data/library-collection-inventory.csv
grep entity_condition_2 /home/hhan16/CloudComputing/data/2013_data.csv
awk 'BEGIN { min=1000000 } $24 < min { min=$24; name=$24 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/loan-merged.csv
