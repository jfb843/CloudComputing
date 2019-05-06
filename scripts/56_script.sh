awk 'BEGIN { min=1000000 } $7 < min { min=$7; name=$7 } END { print name }' FS="," compiled_data/player_data-merged.csv
grep PetalWidthCm data/Iris.csv
grep age_recode_52 compiled_data/mortality-merged.csv
awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," data/cv-invalid.csv
