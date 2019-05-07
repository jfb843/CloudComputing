awk 'BEGIN { max=0 } $13 > max { max=$13; name=$13 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/parking-citations-merged.csv
awk 'BEGIN { min=1000000 } $15 < min { min=$15; name=$15 } END { print name }' FS="," /home/hhan16/CloudComputing/data/UserList.csv
sort --field-separator="," --key=4 /home/hhan16/CloudComputing/data/Checkouts_By_Title_Data_Lens_2005.csv
awk 'BEGIN { max=0 } $10 > max { max=$10; name=$10 } END { print name }' FS="," /home/hhan16/CloudComputing/data/UserList.csv
grep record_condition_13 /home/hhan16/CloudComputing/data/2010_data.csv
