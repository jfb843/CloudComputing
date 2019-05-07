grep entity_condition_5 /home/hhan16/CloudComputing/compiled_data/2012_data-merged.csv
awk 'BEGIN { max=0 } $75 > max { max=$75; name=$75 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/data-merged.csv
grep LW /home/hhan16/CloudComputing/compiled_data/data-merged.csv
grep SepalLengthCm /home/hhan16/CloudComputing/compiled_data/Iris-merged.csv
sort --field-separator="," --key=6 /home/hhan16/CloudComputing/compiled_data/falldeteciton-merged.csv
