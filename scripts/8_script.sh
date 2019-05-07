grep date /home/hhan16/CloudComputing/data/CrowdsCureCancer2017Annotations.csv
grep my_status /home/hhan16/CloudComputing/compiled_data/UserAnimeList-merged.csv
awk 'BEGIN { min=1000000 } $67 < min { min=$67; name=$67 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/2008_data-merged.csv
sort --field-separator="," --key=65 /home/hhan16/CloudComputing/compiled_data/2015_data-merged.csv
awk 'BEGIN { max=0 } $13 > max { max=$13; name=$13 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/UserList-merged.csv
grep Alkaline_Phosphotase /home/hhan16/CloudComputing/compiled_data/indian_liver_patient-merged.csv
sort --field-separator="," --key=1 /home/hhan16/CloudComputing/data/speakers_all.csv
