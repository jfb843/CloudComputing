sort --field-separator="," --key=2 /home/hhan16/CloudComputing/data/Reviews.csv
grep Publisher /home/hhan16/CloudComputing/data/checkouts-by-title.csv
grep emp_title /home/hhan16/CloudComputing/data/loan.csv
awk 'BEGIN { max=0 } $13 > max { max=$13; name=$13 } END { print name }' FS="," /home/hhan16/CloudComputing/data/users_filtered.csv
awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/column_2C_weka-merged.csv
awk 'BEGIN { max=0 } $6 > max { max=$6; name=$6 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/parking-citations-merged.csv
sort --field-separator="," --key=1 /home/hhan16/CloudComputing/data/UserAnimeList.csv
