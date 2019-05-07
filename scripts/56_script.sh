awk 'BEGIN { min=1000000 } $7 < min { min=$7; name=$7 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/player_data-merged.csv
grep PetalWidthCm /home/hhan16/CloudComputing/data/Iris.csv
grep age_recode_52 /home/hhan16/CloudComputing/compiled_data/mortality-merged.csv
awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/data/cv-invalid.csv
