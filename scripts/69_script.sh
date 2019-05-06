awk 'BEGIN { min=1000000 } $5 < min { min=$5; name=$5 } END { print name }' FS="," compiled_data/player_data-merged.csv
grep "hours.per.week" compiled_data/adult-merged.csv
sort --field-separator="," --key=4 compiled_data/Iris-merged.csv
sort --field-separator="," --key=1 data/isd-history.csv
grep age_recode_27 data/2012_data.csv
grep Alamine_Aminotransferase compiled_data/indian_liver_patient-merged.csv
grep followers data/IRAhandle_tweets_10.csv
