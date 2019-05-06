sort --field-separator="," --key=1 compiled_data/emails-merged.csv
awk 'BEGIN { min=1000000 } $12 < min { min=$12; name=$12 } END { print name }' FS="," data/anime_cleaned.csv
grep variety data/winemag-data-130k-v2.csv
grep Reviews data/googleplaystore.csv
grep Health (Life Expectancy) compiled_data/2015-merged.csv
awk 'BEGIN { min=1000000 } $9 < min { min=$9; name=$9 } END { print name }' FS="," data/athlete_events.csv
