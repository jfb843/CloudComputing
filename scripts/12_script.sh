awk 'BEGIN { min=1000000 } $11 < min { min=$11; name=$11 } END { print name }' FS="," compiled_data/movies_metadata-merged.csv
grep marital_status compiled_data/2012_data-merged.csv
grep PetalLengthCm data/Iris.csv
awk 'BEGIN { max=0 } $30 > max { max=$30; name=$30 } END { print name }' FS="," compiled_data/2011_data-merged.csv
