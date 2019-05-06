awk 'BEGIN { max=0 } $3 > max { max=$3; name=$3 } END { print name }' FS="," compiled_data/column_2C_weka-merged.csv
grep Summary data/Reviews.csv
grep my_tags compiled_data/animelists_filtered-merged.csv
grep year_start compiled_data/player_data-merged.csv
awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," data/users_cleaned.csv
awk 'BEGIN { max=0 } $37 > max { max=$37; name=$37 } END { print name }' FS="," data/2014_data.csv
sort --field-separator="," --key=7 compiled_data/animelists_cleaned-merged.csv
