grep localization /home/hhan16/CloudComputing/data/HAM10000_metadata.csv
grep record_condition_13 /home/hhan16/CloudComputing/compiled_data/2010_data-merged.csv
awk 'BEGIN { min=1000000 } $88 < min { min=$88; name=$88 } END { print name }' FS="," /home/hhan16/CloudComputing/data/data.csv
awk 'BEGIN { max=0 } $21 > max { max=$21; name=$21 } END { print name }' FS="," /home/hhan16/CloudComputing/data/AnimeList.csv
awk 'BEGIN { min=1000000 } $14 < min { min=$14; name=$14 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/AnimeList-merged.csv
sort --field-separator="," --key=36 /home/hhan16/CloudComputing/compiled_data/2006_data-merged.csv
