sort --field-separator="," --key=4 data/cv-invalid.csv
awk 'BEGIN { min=1000000 } $68 < min { min=$68; name=$68 } END { print name }' FS="," data/2012_data.csv
awk 'BEGIN { min=1000000 } $10 < min { min=$10; name=$10 } END { print name }' FS="," compiled_data/animelists_cleaned-merged.csv
