grep month_of_death /home/hhan16/CloudComputing/compiled_data/2012_data-merged.csv
awk 'BEGIN { max=0 } $67 > max { max=$67; name=$67 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/2009_data-merged.csv
sort --field-separator="," --key=7 /home/hhan16/CloudComputing/data/Video_Games_Sales_as_at_22_Dec_2016.csv
sort --field-separator="," --key=67 /home/hhan16/CloudComputing/compiled_data/2009_data-merged.csv
sort --field-separator="," --key=1 /home/hhan16/CloudComputing/data/isd-history.csv
sort --field-separator="," --key=9 /home/hhan16/CloudComputing/data/Video_Games_Sales_as_at_22_Dec_2016.csv
