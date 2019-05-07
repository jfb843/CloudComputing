#!/usr/bin/env bash

# Written by Sharmila
# Installs all requirements to run our scripts
# NOTE: must use your own kaggle username & key from "ACCOUNT" section on kaggle.com
# 		and download API token

# EXAMPLE USAGE: ./requirements.sh sharmilatamby 596181a123dc68544bf6267e2b332e35

sudo apt install python3-pip

sudo pip3 install kaggle
sudo pip3 install pandas

# username and key should be COMMAND LINE parameters
export KAGGLE_USERNAME=$1
export KAGGLE_KEY=$2

#git clone https://github.com/jfb843/CloudComputing.git
