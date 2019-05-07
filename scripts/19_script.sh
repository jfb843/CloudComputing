awk 'BEGIN { min=1000000 } $15 < min { min=$15; name=$15 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/parking-citations-merged.csv
grep Dribbling /home/hhan16/CloudComputing/compiled_data/data-merged.csv
sort --field-separator="," --key=5 /home/hhan16/CloudComputing/compiled_data/country_stats-merged.csv
awk 'BEGIN { min=1000000 } $5 < min { min=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/IRAhandle_tweets_10-merged.csv
awk 'BEGIN { max=0 } $17 > max { max=$17; name=$17 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/AnimeList-merged.csv
grep infant_age_recode_22 /home/hhan16/CloudComputing/data/2012_data.csv
