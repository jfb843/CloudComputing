sort --field-separator="," --key=52 /home/hhan16/CloudComputing/data/2015_data.csv
awk 'BEGIN { max=0 } $49 > max { max=$49; name=$49 } END { print name }' FS="," /home/hhan16/CloudComputing/data/2009_data.csv
awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," /home/hhan16/CloudComputing/data/Iris.csv
sort --field-separator="," --key=74 /home/hhan16/CloudComputing/data/2006_data.csv
sort --field-separator="," --key=4 /home/hhan16/CloudComputing/compiled_data/falldeteciton-merged.csv
sort --field-separator="," --key=2 /home/hhan16/CloudComputing/compiled_data/2007_data-merged.csv
