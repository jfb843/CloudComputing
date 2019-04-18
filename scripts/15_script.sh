awk 'BEGIN { min=1000000 } $4 < min { min=$4; name=$4 } END { print name }' FS="," data/Checkouts_By_Title_Data_Lens_2005.csv
awk 'BEGIN { min=1000000 } $20 < min { min=$20; name=$20 } END { print name }' FS="," data/2012_data.csv
awk 'BEGIN { min=1000000 } $7 < min { min=$7; name=$7 } END { print name }' FS="," data/UserAnimeList.csv
