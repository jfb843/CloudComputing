awk 'BEGIN { min=1000000 } $9 < min { min=$9; name=$9 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/austria-merged.csv
grep next_pymnt_d /home/hhan16/CloudComputing/data/loan.csv
awk 'BEGIN { min=1000000 } $9 < min { min=$9; name=$9 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/data-merged.csv
grep designation /home/hhan16/CloudComputing/compiled_data/winemag-data-130k-v2-merged.csv
awk 'BEGIN { max=0 } $9 > max { max=$9; name=$9 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/austria-merged.csv
sort --field-separator="," --key=49 /home/hhan16/CloudComputing/data/2012_data.csv
