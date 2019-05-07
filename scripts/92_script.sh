grep record_condition_16 /home/hhan16/CloudComputing/compiled_data/2005_data-merged.csv
awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/loan-merged.csv
grep my_finish_date /home/hhan16/CloudComputing/data/animelists_cleaned.csv
awk 'BEGIN { max=0 } $20 > max { max=$20; name=$20 } END { print name }' FS="," /home/hhan16/CloudComputing/data/nyc-rolling-sales.csv
grep ID /home/hhan16/CloudComputing/data/austria.csv
awk 'BEGIN { min=1000000 } $6 < min { min=$6; name=$6 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/athlete_events-merged.csv
grep Generosity /home/hhan16/CloudComputing/compiled_data/2015-merged.csv
