sort --field-separator="," --key=4 /home/hhan16/CloudComputing/data/checkouts-by-title.csv
grep MaterialType /home/hhan16/CloudComputing/data/checkouts-by-title.csv
awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/googleplaystore-merged.csv
grep Title /home/hhan16/CloudComputing/data/checkouts-by-title.csv
awk 'BEGIN { min=1000000 } $18 < min { min=$18; name=$18 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/data-merged.csv
