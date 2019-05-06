awk 'BEGIN { min=1000000 } $8 < min { min=$8; name=$8 } END { print name }' FS="," data/isd-history.csv
grep my_score compiled_data/animelists_filtered-merged.csv
awk 'BEGIN { max=0 } $10 > max { max=$10; name=$10 } END { print name }' FS="," compiled_data/adult-merged.csv
sort --field-separator="," --key=5 compiled_data/falldeteciton-merged.csv
