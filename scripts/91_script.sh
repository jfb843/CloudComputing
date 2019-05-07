awk 'BEGIN { max=0 } $8 > max { max=$8; name=$8 } END { print name }' FS="," /home/hhan16/CloudComputing/data/animelists_cleaned.csv
awk 'BEGIN { min=1000000 } $9 < min { min=$9; name=$9 } END { print name }' FS="," /home/hhan16/CloudComputing/data/movies_metadata.csv
grep ReportDate /home/hhan16/CloudComputing/data/library-collection-inventory.csv
sort --field-separator="," --key=6 /home/hhan16/CloudComputing/data/austria.csv
