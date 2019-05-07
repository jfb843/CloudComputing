grep mths_since_recent_inq /home/hhan16/CloudComputing/data/loan.csv
sort --field-separator="," --key=47 /home/hhan16/CloudComputing/data/2015_data.csv
grep Date /home/hhan16/CloudComputing/compiled_data/Iowa_Liquor_Sales-merged.csv
grep 39_cause_recode /home/hhan16/CloudComputing/data/2008_data.csv
awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," /home/hhan16/CloudComputing/data/Iris.csv
sort --field-separator="," --key=5 /home/hhan16/CloudComputing/compiled_data/falldeteciton-merged.csv
