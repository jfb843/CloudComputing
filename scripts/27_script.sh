awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/creditcard-merged.csv
sort --field-separator="," --key=20 /home/hhan16/CloudComputing/compiled_data/AnimeList-merged.csv
sort --field-separator="," --key=74 /home/hhan16/CloudComputing/data/2008_data.csv
awk 'BEGIN { min=1000000 } $4 < min { min=$4; name=$4 } END { print name }' FS="," /home/hhan16/CloudComputing/data/2015.csv
awk 'BEGIN { max=0 } $11 > max { max=$11; name=$11 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/Video_Games_Sales_as_at_22_Dec_2016-merged.csv
