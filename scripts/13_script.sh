grep age_recode_52 /home/hhan16/CloudComputing/compiled_data/mortality-merged.csv
awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/isd-history-merged.csv
awk 'BEGIN { max=0 } $27 > max { max=$27; name=$27 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/2011_data-merged.csv
grep birth_date /home/hhan16/CloudComputing/data/users_cleaned.csv
