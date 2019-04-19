#!/bin/bash

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

# Generate command times and save to time_labels.log
if [[ ! -f file_info.csv ]]; then
    echo "Generating file info..."
    chmod u+x feature_space.sh
    source feature_space.sh
    # echo "Running generate labels..."
    # chmod u+x generate_file_times.sh
    # source generate_file_times.sh
    echo "File info generated!"
else
    echo "File info already generated!"
fi

# Determine file sizes and save to mem_labels.log
echo "Determining file sizes..."
ls -l compiled_data/* > mem_labels.log
echo "mem_labels.log generated!"
