awk 'BEGIN { min=1000000 } $60 < min { min=$60; name=$60 } END { print name }' FS="," compiled_data/2014_data-merged.csv
awk 'BEGIN { max=0 } $67 > max { max=$67; name=$67 } END { print name }' FS="," data/2011_data.csv
