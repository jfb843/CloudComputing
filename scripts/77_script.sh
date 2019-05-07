awk 'BEGIN { max=0 } $20 > max { max=$20; name=$20 } END { print name }' FS="," /home/hhan16/CloudComputing/data/anime_cleaned.csv
grep ItemLocation /home/hhan16/CloudComputing/compiled_data/library-collection-inventory-merged.csv
awk 'BEGIN { min=1000000 } $11 < min { min=$11; name=$11 } END { print name }' FS="," /home/hhan16/CloudComputing/data/library-collection-inventory.csv
grep age_substitution_flag /home/hhan16/CloudComputing/compiled_data/2014_data-merged.csv
sort --field-separator="," --key=1 /home/hhan16/CloudComputing/data/movies_metadata.csv
grep price /home/hhan16/CloudComputing/data/winemag-data-130k-v2.csv
