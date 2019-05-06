awk 'BEGIN { min=1000000 } $14 < min { min=$14; name=$14 } END { print name }' FS="," compiled_data/creditcard-merged.csv
awk 'BEGIN { min=1000000 } $5 < min { min=$5; name=$5 } END { print name }' FS="," data/adult.csv
grep members compiled_data/anime_cleaned-merged.csv
grep EEG compiled_data/falldeteciton-merged.csv
awk 'BEGIN { max=0 } $44 > max { max=$44; name=$44 } END { print name }' FS="," data/2010_data.csv
sort --field-separator="," --key=5 compiled_data/column_2C_weka-merged.csv
