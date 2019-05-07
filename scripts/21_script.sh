awk 'BEGIN { max=0 } $1 > max { max=$1; name=$1 } END { print name }' FS="," /home/hhan16/CloudComputing/data/HAM10000_metadata.csv
awk 'BEGIN { min=1000000 } $24 < min { min=$24; name=$24 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/2009_data-merged.csv
awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/data/2015.csv
awk 'BEGIN { max=0 } $10 > max { max=$10; name=$10 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/UserAnimeList-merged.csv
sort --field-separator="," --key=30 /home/hhan16/CloudComputing/data/2015_data.csv
grep degree_spondylolisthesis /home/hhan16/CloudComputing/data/column_2C_weka.csv
grep "END" /home/hhan16/CloudComputing/data/isd-history.csv
