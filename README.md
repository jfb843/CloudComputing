# Cloud Computing

EN.601.419/EN.601.619

Spring 2019

Research Project

Members: Amy He, Heather Han, Jennifer Baron, Sharmila Tamby 

### 1) Set Up Environment
Run the ```requirements.sh``` file:
```bash
./requirements.sh KAGGLE_USERNAME KAGGLE_KEY
```
Note: This requires the user to register with Kaggle.com and download their respective API token from the "Accounts" page. The command line arguments are the username and key from the downloaded API token. More information regarding [Kaggle-api](https://github.com/Kaggle/kaggle-api) can be found in the github repo.


### 2) Download Datasets and Gather File Information:
Run the ```get_data.sh``` file:
```bash
./get_data.sh
```
Note: This calls ```feature_space.sh``` which in turn calls ```generate_file_times.sh```

Output: 
* datasets in the ```data/``` and ```compiled_data/``` directories
* all files in the ```output_files/``` directory
* ```file_info.csv``` containing runtimes for commands on all files

### 3) Build Scripts
Run the ```generate_scripts.py``` file:
```bash
python3 generate_scripts.py
```
Output: 
* 100 scripts in ```scripts/``` directory
* ```scripts_info.csv``` file to summarize commands and file information used in each script

### 4) Execute and Time Generated Scripts
Run the ```generate_script_times.sh``` file:
```bash
./generate_script_times.sh
```
Output:
* ```script_feature_labels.csv``` file containing all features and runtimes on all scripts

### 5) Build and Evaluate Linear Regression and Random Forest Models
Run the ```model/models.py``` file:
```bash
python3 models.py
```
