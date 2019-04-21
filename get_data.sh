#!/bin/bash
# This file downloads all datasets and generates combined datasets

# Download datasets
if [[ ! -d data ]]; then
    echo "Downloading datasets..."
    chmod u+x src/download_datasets.sh
    source src/download_datasets.sh
    echo "Datasets downloaded!"
else
    echo "Datasets already downloaded!"
fi

# Generate compiled datasets
if [[ ! -d compiled_data ]]; then
    echo "Compiling datasets..."
    chmod u+x src/generate_datasets.sh
    source src/generate_datasets.sh
    echo "Compiled datasets generated!"
else
    echo "Compiled datasets already generated!"
fi
