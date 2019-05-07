grep up_votes /home/hhan16/CloudComputing/compiled_data/cv-invalid-merged.csv
awk 'BEGIN { min=1000000 } $20 < min { min=$20; name=$20 } END { print name }' FS="," /home/hhan16/CloudComputing/data/movies_metadata.csv
sort --field-separator="," --key=6 /home/hhan16/CloudComputing/data/bitcoin_cash_price.csv
awk 'BEGIN { max=0 } $67 > max { max=$67; name=$67 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/loan-merged.csv
