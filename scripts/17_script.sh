sort --field-separator="," --key=3 /home/hhan16/CloudComputing/compiled_data/UserList-merged.csv
sort --field-separator="," --key=10 /home/hhan16/CloudComputing/data/adult.csv
grep entity_condition_16 /home/hhan16/CloudComputing/compiled_data/2007_data-merged.csv
awk 'BEGIN { max=0 } $10 > max { max=$10; name=$10 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/movies_metadata-merged.csv
