# Cloud Computing

EN.601.419/EN.601.619

Spring 2019

Research Project

Members: Amy He, Heather Han, Jennifer Baron, Sharmila Tamby 


## Environment Setup
Run the ```requirements.sh``` file:
```bash
./requirements.sh KAGGLE_USERNAME KAGGLE_KEY
```
Note: This requires the user to register with Kaggle.com and download their respective API token from the "Accounts" page. The command line arguments are the username and key from the downloaded API token. More information regarding [Kaggle-api](https://github.com/Kaggle/kaggle-api) can be found in the github repo.

## Running the Code
#### Repository Structure
Information and figures for the data files used are in the ```data_exploration``` folder. Output files that were generated in the process of creating the feature space for the machine learning models are in located in the ```output_files``` directory. All other direct input and output for the ML models, and the code to build the machine learning models are located in the ```model``` folder. 

### Running the pipeline
The entire pipeline can be run through execution of ```run.sh``` as follows
```bash
./run.sh
```
Alternatively, each step of the pipeline can be run separately using the steps outlined below.

### 1) Download and Generate Combined Datasets
Run the ```get_data.sh``` script as follows
```bash
./get_data.sh
```
Note: This script calls ```download_datasets.sh``` and```generate_datasets.sh```

Output: 
* datasets in the ```data/``` and ```compiled_data/``` directories


### 2) Gather File Information for All Generated Datasets
Create the feature space for the machine learning models.

Run the ```feature_space.sh``` file:
```bash
./feature_space.sh
```

Note: This script calls ```generate_file_times.sh```. Plots in the data_exploration folder were generated from the outputs of these scripts.

Output:
* all files in the ```output_files/``` directory
* ```file_info.csv``` containing runtimes for commands on all files


### 3) Randomly Generate Scripts
Create the samples for the machine learning models.

Run the ```generate_scripts.py``` file:
```bash
python3 generate_scripts.py
```

Output: 
* 100 scripts in ```scripts/``` directory
* ```scripts_info.csv``` file to summarize commands and file information used in each script


### 4) Execute and Time Generated Scripts
Create the label space for the machine learning models (runtime of all scripts)

Run the ```generate_script_times.sh``` file:
```bash
./generate_script_times.sh
```
Alternatively, can submit a job to hadoop using the ```generateScriptTimes.jar``` file

Output:
* ```script_labels.log``` containing runtimes for all scripts (temporary file)
* ```script_feature_labels.csv``` file containing all features and runtimes on all scripts


### 5) Build and Evaluate Linear Regression and Random Forest Models
Run the ```model/models.py``` file:
```bash
python3 models.py
```

Output:
* ```model/accuracies.log``` containing the percent errors of the models on train and test data
* all figures in the ```model``` directory
