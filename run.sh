#!/bin/bash
# Author: Heather


# 1) download datasets and generate combined datasets
source get_data.sh

# 2) gather file information for all generated datasets 
# (create feature space for the ML model)
source feature_space.sh

# 3) randomly generate scripts (create samples for the ML model)
python3 generate_scripts.py

# 4a) execute and time generated scripts (sequential method)
# source generate_script_times.sh

# 4b) execute and time generated scripts (async method)
#    update src/sample.java and src/sample.mf with user-specific paths and 
#    generate jar files
source compile.sh
source generate_script_times_async.sh

# 5) build and evaluate ML models
python3 models.py
