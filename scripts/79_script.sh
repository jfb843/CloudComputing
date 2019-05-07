grep COMMERCIAL UNITS /home/hhan16/CloudComputing/data/nyc-rolling-sales.csv
awk 'BEGIN { min=1000000 } $11 < min { min=$11; name=$11 } END { print name }' FS="," /home/hhan16/CloudComputing/data/library-collection-inventory.csv
awk 'BEGIN { min=1000000 } $70 < min { min=$70; name=$70 } END { print name }' FS="," /home/hhan16/CloudComputing/data/2007_data.csv
grep Latitude /home/hhan16/CloudComputing/data/parking-citations.csv
