awk 'BEGIN { min=1000000 } $114 < min { min=$114; name=$114 } END { print name }' FS="," /home/hhan16/CloudComputing/data/loan.csv
sort --field-separator="," --key=14 /home/hhan16/CloudComputing/compiled_data/users_filtered-merged.csv
awk 'BEGIN { min=1000000 } $42 < min { min=$42; name=$42 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/2012_data-merged.csv
grep kiva_country_name /home/hhan16/CloudComputing/compiled_data/country_stats-merged.csv
awk 'BEGIN { max=0 } $30 > max { max=$30; name=$30 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/AnimeList-merged.csv
