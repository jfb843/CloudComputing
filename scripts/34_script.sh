sort --field-separator="," --key=5 compiled_data/2012_data-merged.csv
awk 'BEGIN { max=0 } $6 > max { max=$6; name=$6 } END { print name }' FS="," compiled_data/column_2C_weka-merged.csv
awk 'BEGIN { max=0 } $15 > max { max=$15; name=$15 } END { print name }' FS="," compiled_data/anime_cleaned-merged.csv
grep entity_condition_13 data/2014_data.csv
awk 'BEGIN { max=0 } $2 > max { max=$2; name=$2 } END { print name }' FS="," data/Iris.csv
