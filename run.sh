#!/bin/bash
# Author: Heather


# 1) download datasets and generate combined datasets
source get_data.sh

# 2) gather file information for all generated datasets 
# (create feature space for the ML model)
source feature_space.sh

# 3) randomly generate scripts (create samples for the ML model)
read -p "Do you want to generate new scripts (default is no - to use existing scripts)? (y/n) " yn
	case $yn in
		yes|Yes|y|Y ) python3 generate_scripts.py;;
		no|No|n|N )	echo "using exisitng scripts in scripts/";;
		* ) echo "invalid";;
	esac

# 4) execute and time generated scripts
read -p "Do you want to run scripts synchronously or asynchronously? (sync/async) " method
	case $method in
		# 4a) sequential method
		sync|Sync|synchronous|Synchronous ) source generate_script_times.sh;;
		# 4b) update src/sample.java and src/sample.mf with user-specific paths and 
		#    generate jar files
		async|Async|asynchronous|Asynchronous ) 
			read -p "Have you updated src/sample.java, src/sample.mf, and generate_script_times_async.sh? (y/n) " yn
			 	case $yn in
			 		yes|Yes|y|Y ) source compile.sh; echo "Execute generate_script_times_async.sh locally using source generate_script_times_async.sh";;
					no|No|n|N ) echo "Please update files and re-execute!";;
					* ) echo "invalid";;
				esac
			;;
		* ) echo "invalid";;
    esac

# 5) build and evaluate ML models
read -p "Have you ran generate_script_times_async.sh to get labels? (y/n) " yn
	case $yn in
 		yes|Yes|y|Y ) python3 model/models.py;;
		no|No|n|N ) echo "Please generate labels first before running the model";;
		* ) echo "invalid";;
	esac
