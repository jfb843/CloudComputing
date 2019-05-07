sort --field-separator="," --key=8 /home/hhan16/CloudComputing/compiled_data/Iowa_Liquor_Sales-merged.csv
grep Checkouts /home/hhan16/CloudComputing/compiled_data/checkouts-by-title-merged.csv
sort --field-separator="," --key=2 /home/hhan16/CloudComputing/compiled_data/2013_data-merged.csv
awk 'BEGIN { max=0 } $27 > max { max=$27; name=$27 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/2009_data-merged.csv
