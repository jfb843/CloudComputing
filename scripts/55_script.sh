awk 'BEGIN { max=0 } $8 > max { max=$8; name=$8 } END { print name }' FS="," compiled_data/Video_Games_Sales_as_at_22_Dec_2016-merged.csv
awk 'BEGIN { min=1000000 } $21 < min { min=$21; name=$21 } END { print name }' FS="," data/anime_filtered.csv
awk 'BEGIN { max=0 } $8 > max { max=$8; name=$8 } END { print name }' FS="," data/2015.csv
awk 'BEGIN { min=1000000 } $21 < min { min=$21; name=$21 } END { print name }' FS="," compiled_data/anime_cleaned-merged.csv
awk 'BEGIN { max=0 } $8 > max { max=$8; name=$8 } END { print name }' FS="," data/anime_filtered.csv
awk 'BEGIN { min=1000000 } $76 < min { min=$76; name=$76 } END { print name }' FS="," compiled_data/mortality-merged.csv
sort --field-separator="," --key=9 compiled_data/animelists_filtered-merged.csv
