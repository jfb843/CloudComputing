sort --field-separator="," --key=9 /home/hhan16/CloudComputing/compiled_data/parking-citations-merged.csv
sort --field-separator="," --key=13 /home/hhan16/CloudComputing/data/2010_data.csv
sort --field-separator="," --key=11 /home/hhan16/CloudComputing/data/UserList.csv
sort --field-separator="," --key=11 /home/hhan16/CloudComputing/compiled_data/adult-merged.csv
awk 'BEGIN { max=0 } $13 > max { max=$13; name=$13 } END { print name }' FS="," /home/hhan16/CloudComputing/data/IRAhandle_tweets_10.csv
