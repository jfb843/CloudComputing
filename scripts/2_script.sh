awk 'BEGIN { max=0 } $2 > max { max=$2; name=$2 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/country_stats-merged.csv
awk 'BEGIN { min=1000000 } $5 < min { min=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/speakers_all-merged.csv
sort --field-separator="," --key=9 /home/hhan16/CloudComputing/compiled_data/users_cleaned-merged.csv
sort --field-separator="," --key=1 /home/hhan16/CloudComputing/data/HAM10000_metadata.csv
awk 'BEGIN { min=1000000 } $12 < min { min=$12; name=$12 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/Iowa_Liquor_Sales-merged.csv
awk 'BEGIN { min=1000000 } $7 < min { min=$7; name=$7 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/winemag-data-130k-v2-merged.csv
