awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/data/cv-invalid.csv
sort --field-separator="," --key=4 /home/hhan16/CloudComputing/compiled_data/Iris-merged.csv
grep my_start_date /home/hhan16/CloudComputing/data/UserAnimeList.csv
awk 'BEGIN { min=1000000 } $10 < min { min=$10; name=$10 } END { print name }' FS="," /home/hhan16/CloudComputing/data/country_stats.csv
sort --field-separator="," --key=6 /home/hhan16/CloudComputing/data/player_data.csv
