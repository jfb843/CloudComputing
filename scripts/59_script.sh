sort --field-separator="," --key=5 /home/hhan16/CloudComputing/compiled_data/users_cleaned-merged.csv
awk 'BEGIN { min=1000000 } $7 < min { min=$7; name=$7 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/parking-citations-merged.csv
grep hispanic_originrace_recode /home/hhan16/CloudComputing/data/2011_data.csv
awk 'BEGIN { max=0 } $17 > max { max=$17; name=$17 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/AnimeList-merged.csv
grep birthplace /home/hhan16/CloudComputing/data/speakers_all.csv
awk 'BEGIN { min=1000000 } $3 < min { min=$3; name=$3 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/falldeteciton-merged.csv
grep record_condition_10 /home/hhan16/CloudComputing/compiled_data/2010_data-merged.csv
