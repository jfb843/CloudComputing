awk 'BEGIN { min=1000000 } $32 < min { min=$32; name=$32 } END { print name }' FS="," compiled_data/2007_data-merged.csv
awk 'BEGIN { min=1000000 } $7 < min { min=$7; name=$7 } END { print name }' FS="," data/2015.csv
