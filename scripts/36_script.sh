grep Current Ver /home/hhan16/CloudComputing/compiled_data/googleplaystore-merged.csv
sort --field-separator="," --key=13 /home/hhan16/CloudComputing/compiled_data/parking-citations-merged.csv
awk 'BEGIN { max=0 } $8 > max { max=$8; name=$8 } END { print name }' FS="," /home/hhan16/CloudComputing/data/checkouts-by-title.csv
sort --field-separator="," --key=3 /home/hhan16/CloudComputing/compiled_data/Iris-merged.csv
sort --field-separator="," --key=10 /home/hhan16/CloudComputing/data/UserAnimeList.csv
grep "END" /home/hhan16/CloudComputing/compiled_data/isd-history-merged.csv
sort --field-separator="," --key=13 /home/hhan16/CloudComputing/data/UserList.csv
