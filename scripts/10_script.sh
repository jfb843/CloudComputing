awk 'BEGIN { max=0 } $14 > max { max=$14; name=$14 } END { print name }' FS="," compiled_data/2008_data-merged.csv
grep sacral_slope compiled_data/column_2C_weka-merged.csv
awk 'BEGIN { max=0 } $15 > max { max=$15; name=$15 } END { print name }' FS="," compiled_data/2009_data-merged.csv
awk 'BEGIN { min=1000000 } $71 < min { min=$71; name=$71 } END { print name }' FS="," data/2015_data.csv
sort --field-separator="," --key=6 data/Reviews.csv
grep BUILDING CLASS AT PRESENT compiled_data/nyc-rolling-sales-merged.csv
