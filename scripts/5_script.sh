awk 'BEGIN { min=1000000 } $10 < min { min=$10; name=$10 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/adult-merged.csv
awk 'BEGIN { max=0 } $4 > max { max=$4; name=$4 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/Checkouts_By_Title_Data_Lens_2005-merged.csv
awk 'BEGIN { max=0 } $11 > max { max=$11; name=$11 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/creditcard-merged.csv
awk 'BEGIN { max=0 } $2 > max { max=$2; name=$2 } END { print name }' FS="," /home/hhan16/CloudComputing/data/Reviews.csv
awk 'BEGIN { max=0 } $67 > max { max=$67; name=$67 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/2012_data-merged.csv
awk 'BEGIN { max=0 } $5 > max { max=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/animelists_cleaned-merged.csv
sort --field-separator="," --key=9 /home/hhan16/CloudComputing/compiled_data/anime_cleaned-merged.csv
