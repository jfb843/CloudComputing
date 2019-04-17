#!/bin/bash
#running files for compiled
# Inputs:
# 	generate_compiled_labels.sh
# 	create_compiled_labels.py
#
#	compiled_mem_labels.log
#	compiled_time_labels.log
# Outputs:
#	combined_feature_tbl.csv
# If running create_compied_labels.py doesnt work at first you need to remove first 
#	line ine compiled_mem_labels.log
# compiled_models.py makes graphs

# Download datasets
if [[ ! -d data ]]; then
    echo "Downloading datasets..."
    chmod u+x datasets.sh
    source datasets.sh
    echo "Datasets downloaded!"
else
    echo "Datasets already downloaded!"
fi

# Generate compiled datasets
if [[ ! -d compiled_data ]]; then
    echo "Compiling datasets..."
    chmod u+x generate_datasets.sh
    source generate_datasets.sh
    echo "Compiled datasets generated!"
else
    echo "Compiled datasets already generated!"
fi

# Generate labels (time)
if [[ ! -f time_labels.log ]]; then
    echo "Running generate labels..."
    chmod u+x generate_labels.sh
    source generate_labels.sh
    echo "Labels generated!"
else
    echo "Labels already generated"
fi

# Determine file sizes and save to mem_labels.log
echo "Determining file sizes..."
ls -l compiled_data/* > mem_labels.log
echo "mem_labels.log generated!"

# Create a table with file size and time labels
echo "Creating table with file sizes and time labels...y"
python3 create_labels.py
echo "feature_tbl.csv generated!"

echo "Making models..."
python3 models.py
echo "Model made!"
