awk 'BEGIN { min=1000000 } $4 < min { min=$4; name=$4 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/winemag-data-130k-v2-merged.csv
grep Location /home/hhan16/CloudComputing/compiled_data/parking-citations-merged.csv
awk 'BEGIN { max=0 } $22 > max { max=$22; name=$22 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/2007_data-merged.csv
grep weight /home/hhan16/CloudComputing/data/player_data.csv
awk 'BEGIN { max=0 } $38 > max { max=$38; name=$38 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/2011_data-merged.csv
