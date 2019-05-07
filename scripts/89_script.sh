awk 'BEGIN { max=0 } $15 > max { max=$15; name=$15 } END { print name }' FS="," /home/hhan16/CloudComputing/data/nyc-rolling-sales.csv
awk 'BEGIN { min=1000000 } $4 < min { min=$4; name=$4 } END { print name }' FS="," /home/hhan16/CloudComputing/data/falldeteciton.csv
grep record_condition_6 /home/hhan16/CloudComputing/data/2007_data.csv
awk 'BEGIN { max=0 } $40 > max { max=$40; name=$40 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/loan-merged.csv
