sort --field-separator="," --key=52 data/2015_data.csv
awk 'BEGIN { max=0 } $49 > max { max=$49; name=$49 } END { print name }' FS="," data/2009_data.csv
awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," data/Iris.csv
sort --field-separator="," --key=74 data/2006_data.csv
sort --field-separator="," --key=4 compiled_data/falldeteciton-merged.csv
sort --field-separator="," --key=2 compiled_data/2007_data-merged.csv
