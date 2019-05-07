awk 'BEGIN { min=1000000 } $5 < min { min=$5; name=$5 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/player_data-merged.csv
grep "hours.per.week" /home/hhan16/CloudComputing/compiled_data/adult-merged.csv
sort --field-separator="," --key=4 /home/hhan16/CloudComputing/compiled_data/Iris-merged.csv
sort --field-separator="," --key=1 /home/hhan16/CloudComputing/data/isd-history.csv
grep age_recode_27 /home/hhan16/CloudComputing/data/2012_data.csv
grep Alamine_Aminotransferase /home/hhan16/CloudComputing/compiled_data/indian_liver_patient-merged.csv
grep followers /home/hhan16/CloudComputing/data/IRAhandle_tweets_10.csv
