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

echo "Running generate labels"

#source generate_compiled_labels.sh

echo "Working directory $PWD"

echo "copying output"
#find data -maxdepth 1 -type f > sample.log
#cd compiled_data
ls -ld compiled_data/* > compiled_mem_labels.log

echo "Running create labels.py"

python3 create_compiled_labels.py

echo "Making models"
python3 compiled_models.py

