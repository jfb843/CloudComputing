awk 'BEGIN { min=1000000 } $4 < min { min=$4; name=$4 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/indian_liver_patient-merged.csv
awk 'BEGIN { min=1000000 } $5 < min { min=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/data/Reviews.csv
grep CheckoutDateTime /home/hhan16/CloudComputing/compiled_data/Checkouts_By_Title_Data_Lens_2005-merged.csv
awk 'BEGIN { min=1000000 } $11 < min { min=$11; name=$11 } END { print name }' FS="," /home/hhan16/CloudComputing/data/CrowdsCureCancer2017Annotations.csv
awk 'BEGIN { max=0 } $6 > max { max=$6; name=$6 } END { print name }' FS="," /home/hhan16/CloudComputing/data/UserAnimeList.csv
awk 'BEGIN { min=1000000 } $6 < min { min=$6; name=$6 } END { print name }' FS="," /home/hhan16/CloudComputing/data/data.csv
