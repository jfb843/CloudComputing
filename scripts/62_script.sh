awk 'BEGIN { min=1000000 } $14 < min { min=$14; name=$14 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/creditcard-merged.csv
awk 'BEGIN { min=1000000 } $5 < min { min=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/data/adult.csv
grep members /home/hhan16/CloudComputing/compiled_data/anime_cleaned-merged.csv
grep EEG /home/hhan16/CloudComputing/compiled_data/falldeteciton-merged.csv
awk 'BEGIN { max=0 } $44 > max { max=$44; name=$44 } END { print name }' FS="," /home/hhan16/CloudComputing/data/2010_data.csv
sort --field-separator="," --key=5 /home/hhan16/CloudComputing/compiled_data/column_2C_weka-merged.csv
