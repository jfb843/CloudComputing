grep price /home/hhan16/CloudComputing/data/winemag-data-130k-v2.csv
awk 'BEGIN { min=1000000 } $15 < min { min=$15; name=$15 } END { print name }' FS="," /home/hhan16/CloudComputing/data/anime_cleaned.csv
awk 'BEGIN { min=1000000 } $2 < min { min=$2; name=$2 } END { print name }' FS="," /home/hhan16/CloudComputing/compiled_data/CrowdsCureCancer2017Annotations-merged.csv
awk 'BEGIN { min=1000000 } $1 < min { min=$1; name=$1 } END { print name }' FS="," /home/hhan16/CloudComputing/data/emails.csv
