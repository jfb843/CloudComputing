awk 'BEGIN { max=0 } $1 > max { max=$1; name=$1 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/HAM10000_metadata-merged.csv
sort --field-separator="," --key=3 /home/hhan16/CloudComputing/compiled_data/2015-merged.csv
sort --field-separator="," --key=8 /home/hhan16/CloudComputing/data/library-collection-inventory.csv
awk 'BEGIN { max=0 } $1 > max { max=$1; name=$1 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/Reviews-merged.csv
sort --field-separator="," --key=71 /home/hhan16/CloudComputing/data/2013_data.csv
grep HelpfulnessDenominator /home/hhan16/CloudComputing/compiled_data/Reviews-merged.csv
