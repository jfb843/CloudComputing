awk 'BEGIN { max=0 } $4 > max { max=$4; name=$4 } END { print name }' FS="," compiled_data/adult-merged.csv
grep country data/speakers_all.csv
awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," compiled_data/bitcoin_cash_price-merged.csv
awk 'BEGIN { max=0 } $11 > max { max=$11; name=$11 } END { print name }' FS="," compiled_data/AnimeList-merged.csv
awk 'BEGIN { max=0 } $11 > max { max=$11; name=$11 } END { print name }' FS="," compiled_data/anime_cleaned-merged.csv
awk 'BEGIN { min=1000000 } $9 < min { min=$9; name=$9 } END { print name }' FS="," data/Video_Games_Sales_as_at_22_Dec_2016.csv
grep Current Ver compiled_data/googleplaystore-merged.csv
