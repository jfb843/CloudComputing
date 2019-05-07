sort --field-separator="," --key=1 /home/hhan16/CloudComputing/compiled_data/emails-merged.csv
awk 'BEGIN { min=1000000 } $12 < min { min=$12; name=$12 } END { print name }' FS="," /home/hhan16/CloudComputing/data/anime_cleaned.csv
grep variety /home/hhan16/CloudComputing/data/winemag-data-130k-v2.csv
grep Reviews /home/hhan16/CloudComputing/data/googleplaystore.csv
grep Health (Life Expectancy) /home/hhan16/CloudComputing/compiled_data/2015-merged.csv
awk 'BEGIN { min=1000000 } $9 < min { min=$9; name=$9 } END { print name }' FS="," /home/hhan16/CloudComputing/data/athlete_events.csv
