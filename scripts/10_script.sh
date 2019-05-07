awk 'BEGIN { max=0 } $14 > max { max=$14; name=$14 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/2008_data-merged.csv
grep sacral_slope /home/hhan16/CloudComputing/compiled_data/column_2C_weka-merged.csv
awk 'BEGIN { max=0 } $15 > max { max=$15; name=$15 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/2009_data-merged.csv
awk 'BEGIN { min=1000000 } $71 < min { min=$71; name=$71 } END { print name }' FS="," /home/hhan16/CloudComputing/data/2015_data.csv
sort --field-separator="," --key=6 /home/hhan16/CloudComputing/data/Reviews.csv
grep BUILDING CLASS AT PRESENT /home/hhan16/CloudComputing/compiled_data/nyc-rolling-sales-merged.csv
