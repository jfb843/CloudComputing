sort --field-separator="," --key=11 /home/hhan16/CloudComputing/compiled_data/parking-citations-merged.csv
awk 'BEGIN { max=0 } $1 > max { max=$1; name=$1 } END { print name }' FS="," /home/hhan16/CloudComputing/data/country_stats.csv
grep anime_id /home/hhan16/CloudComputing/compiled_data/UserAnimeList-merged.csv
grep year_start /home/hhan16/CloudComputing/data/player_data.csv
awk 'BEGIN { max=0 } $71 > max { max=$71; name=$71 } END { print name }' FS="," /home/hhan16/CloudComputing/data/2008_data.csv
