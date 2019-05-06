grep date data/CrowdsCureCancer2017Annotations.csv
grep my_status compiled_data/UserAnimeList-merged.csv
awk 'BEGIN { min=1000000 } $67 < min { min=$67; name=$67 } END { print name }' FS="," compiled_data/2008_data-merged.csv
sort --field-separator="," --key=65 compiled_data/2015_data-merged.csv
awk 'BEGIN { max=0 } $13 > max { max=$13; name=$13 } END { print name }' FS="," compiled_data/UserList-merged.csv
grep Alkaline_Phosphotase compiled_data/indian_liver_patient-merged.csv
sort --field-separator="," --key=1 data/speakers_all.csv
