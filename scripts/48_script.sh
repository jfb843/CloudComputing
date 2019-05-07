awk 'BEGIN { max=0 } $74 > max { max=$74; name=$74 } END { print name }' FS="," /home/hhan16/CloudComputing/data/2015_data.csv
awk 'BEGIN { min=1000000 } $15 < min { min=$15; name=$15 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/mortality-merged.csv
grep record_condition_2 /home/hhan16/CloudComputing/compiled_data/2010_data-merged.csv
sort --field-separator="," --key=1 /home/hhan16/CloudComputing/data/UserList.csv
sort --field-separator="," --key=7 /home/hhan16/CloudComputing/compiled_data/animelists_cleaned-merged.csv
