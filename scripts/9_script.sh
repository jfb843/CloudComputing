grep mths_since_recent_inq data/loan.csv
sort --field-separator="," --key=47 data/2015_data.csv
grep Date compiled_data/Iowa_Liquor_Sales-merged.csv
grep 39_cause_recode data/2008_data.csv
awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," data/Iris.csv
sort --field-separator="," --key=5 compiled_data/falldeteciton-merged.csv
