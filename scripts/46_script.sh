sort --field-separator="," --key=5 /home/hhan16/CloudComputing/data/Iris.csv
sort --field-separator="," --key=3 /home/hhan16/CloudComputing/data/Checkouts_By_Title_Data_Lens_2005.csv
awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/Iris-merged.csv
awk 'BEGIN { min=1000000 } $17 < min { min=$17; name=$17 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/AnimeList-merged.csv
grep hardship_loan_status /home/hhan16/CloudComputing/data/loan.csv
grep stats_rewatched /home/hhan16/CloudComputing/data/users_filtered.csv
