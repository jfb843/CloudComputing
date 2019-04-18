# Cloud Computing

EN.601.419/EN.601.619

Spring 2019

Research Project

Members: Amy He, Heather Han, Jennifer Baron, Sharmila Tamby 

#### To Set Up Environment
Run the ```[something].sh``` file: [[ This file should set up Kaggle Environment?]]
```bash
./[something].sh
```
Requirements:
* [Kaggle-api](https://github.com/Kaggle/kaggle-api)

#### To Download Datasets
Run the ```get_data.sh``` file:
```bash
./get_data.sh
```
Output: 
* datasets in  ```data/``` folder and ```compiled_data/``` folder

#### To Generate File Information onto feature_table.csv [[ change feature_table.csv to file_info.csv]]
Run the ```[something].sh``` file:  [[ this script should make size_rows_cols.log and finally feature_table.csv]]
```bash
./[something].sh
```
[[if are ADDING the command times to feature_table.csv, then you should put the code to do so in the same script as above.]]

[[if you are making another file to record the sort, max, min times for each file, add a script here to do that. The output can be something like command_times.csv]]

#### To Build Scripts
Run the ```generate_scripts.py``` file:
```bash
python generate_scripts.py
```
Output: 
* 100 scripts in ```/scripts``` folder
* ```scripts_info.csv``` file to summarize commands and file information used in each script

#### To Build and Evaluate Linear Regression and Regression Tree Models
Run the ```models.py``` file:
```bash
python models.py
```
