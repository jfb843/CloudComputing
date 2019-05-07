awk 'BEGIN { min=1000000 } $9 < min { min=$9; name=$9 } END { print name }' FS="," /home/hhan16/CloudComputing/data/AnimeList.csv
grep month_of_death /home/hhan16/CloudComputing/data/2010_data.csv
sort --field-separator="," --key=33 /home/hhan16/CloudComputing/data/2006_data.csv
sort --field-separator="," --key=43 /home/hhan16/CloudComputing/compiled_data/2010_data-merged.csv
grep last_online /home/hhan16/CloudComputing/data/UserList.csv
sort --field-separator="," --key=3 /home/hhan16/CloudComputing/data/checkouts-by-title.csv
awk 'BEGIN { min=1000000 } $10 < min { min=$10; name=$10 } END { print name }' FS="," /home/hhan16/CloudComputing/data/checkouts-by-title.csv
