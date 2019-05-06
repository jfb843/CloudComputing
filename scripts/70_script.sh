grep entity_condition_5 compiled_data/2012_data-merged.csv
awk 'BEGIN { max=0 } $75 > max { max=$75; name=$75 } END { print name }' FS="," compiled_data/data-merged.csv
grep LW compiled_data/data-merged.csv
grep SepalLengthCm compiled_data/Iris-merged.csv
sort --field-separator="," --key=6 compiled_data/falldeteciton-merged.csv
