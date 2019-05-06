grep Current Ver compiled_data/googleplaystore-merged.csv
sort --field-separator="," --key=13 compiled_data/parking-citations-merged.csv
awk 'BEGIN { max=0 } $8 > max { max=$8; name=$8 } END { print name }' FS="," data/checkouts-by-title.csv
sort --field-separator="," --key=3 compiled_data/Iris-merged.csv
sort --field-separator="," --key=10 data/UserAnimeList.csv
grep "END" compiled_data/isd-history-merged.csv
sort --field-separator="," --key=13 data/UserList.csv
