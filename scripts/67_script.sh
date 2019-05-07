awk 'BEGIN { max=0 } $1 > max { max=$1; name=$1 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/Iris-merged.csv
sort --field-separator="," --key=1 /home/hhan16/CloudComputing/data/HAM10000_metadata.csv
sort --field-separator="," --key=14 /home/hhan16/CloudComputing/compiled_data/Iowa_Liquor_Sales-merged.csv
sort --field-separator="," --key=1 /home/hhan16/CloudComputing/data/Video_Games_Sales_as_at_22_Dec_2016.csv
awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," /home/hhan16/CloudComputing/data/player_data.csv
grep entity_condition_19 /home/hhan16/CloudComputing/compiled_data/2009_data-merged.csv
