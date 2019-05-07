grep entity_condition_3 /home/hhan16/CloudComputing/compiled_data/2013_data-merged.csv
awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/Checkouts_By_Title_Data_Lens_2005-merged.csv
sort --field-separator="," --key=24 /home/hhan16/CloudComputing/compiled_data/anime_cleaned-merged.csv
awk 'BEGIN { min=1000000 } $15 < min { min=$15; name=$15 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/IRAhandle_tweets_10-merged.csv
