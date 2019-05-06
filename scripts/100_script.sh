sort --field-separator="," --key=2 data/falldeteciton.csv
grep "V17" data/creditcard.csv
awk 'BEGIN { min=1000000 } $17 < min { min=$17; name=$17 } END { print name }' FS="," data/parking-citations.csv
grep _id compiled_data/CrowdsCureCancer2017Annotations-merged.csv
