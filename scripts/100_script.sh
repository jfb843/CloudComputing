sort --field-separator="," --key=2 /home/hhan16/CloudComputing/data/falldeteciton.csv
grep "V17" /home/hhan16/CloudComputing/data/creditcard.csv
awk 'BEGIN { min=1000000 } $17 < min { min=$17; name=$17 } END { print name }' FS="," /home/hhan16/CloudComputing/data/parking-citations.csv
grep _id /home/hhan16/CloudComputing/compiled_data/CrowdsCureCancer2017Annotations-merged.csv
