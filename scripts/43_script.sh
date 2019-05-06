awk 'BEGIN { min=1000000 } $9 < min { min=$9; name=$9 } END { print name }' FS="," data/AnimeList.csv
grep month_of_death data/2010_data.csv
sort --field-separator="," --key=33 data/2006_data.csv
sort --field-separator="," --key=43 compiled_data/2010_data-merged.csv
grep last_online data/UserList.csv
sort --field-separator="," --key=3 data/checkouts-by-title.csv
awk 'BEGIN { min=1000000 } $10 < min { min=$10; name=$10 } END { print name }' FS="," data/checkouts-by-title.csv
