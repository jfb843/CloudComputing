sort --field-separator="," --key=5 /home/hhan16/CloudComputing/compiled_data/2012_data-merged.csv
awk 'BEGIN { max=0 } $6 > max { max=$6; name=$6 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/column_2C_weka-merged.csv
awk 'BEGIN { max=0 } $15 > max { max=$15; name=$15 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/anime_cleaned-merged.csv
grep entity_condition_13 /home/hhan16/CloudComputing/data/2014_data.csv
awk 'BEGIN { max=0 } $2 > max { max=$2; name=$2 } END { print name }' FS="," /home/hhan16/CloudComputing/data/Iris.csv
