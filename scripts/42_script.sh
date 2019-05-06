sort --field-separator="," --key=47 compiled_data/2015_data-merged.csv
awk 'BEGIN { max=0 } $58 > max { max=$58; name=$58 } END { print name }' FS="," compiled_data/2015_data-merged.csv
sort --field-separator="," --key=40 data/2015_data.csv
awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," data/cv-invalid.csv
grep icd_code_10th_revision data/2010_data.csv
