awk 'BEGIN { max=0 } $20 > max { max=$20; name=$20 } END { print name }' FS="," data/anime_cleaned.csv
grep ItemLocation compiled_data/library-collection-inventory-merged.csv
awk 'BEGIN { min=1000000 } $11 < min { min=$11; name=$11 } END { print name }' FS="," data/library-collection-inventory.csv
grep age_substitution_flag compiled_data/2014_data-merged.csv
sort --field-separator="," --key=1 data/movies_metadata.csv
grep price data/winemag-data-130k-v2.csv
