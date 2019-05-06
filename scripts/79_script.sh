grep COMMERCIAL UNITS data/nyc-rolling-sales.csv
awk 'BEGIN { min=1000000 } $11 < min { min=$11; name=$11 } END { print name }' FS="," data/library-collection-inventory.csv
awk 'BEGIN { min=1000000 } $70 < min { min=$70; name=$70 } END { print name }' FS="," data/2007_data.csv
grep Latitude data/parking-citations.csv
