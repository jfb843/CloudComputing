# Cloud Computing

EN.601.419/EN.601.619

Spring 2019

Research Project

Members: Amy He, Heather Han, Jennifer Baron, Sharmila Tamby 

#### To Set Up Environment
Run the ```requirements.sh``` file: [[ This file should set up Kaggle Environment?]]
```bash
./requierments.sh KAGGLE_USERNAME KAGGLE_KEY
```
Note: This requires the user to register with Kaggle.com and download their respective API token from the "Accounts" page. The command line arguments and the username and key from the downloaded API token.
Requirements:
* Google Cloud Dataproc
* [Kaggle-api](https://github.com/Kaggle/kaggle-api)


#### To Download Datasets and Gather File Information:
Run the ```get_data.sh``` file:
```bash
./get_data.sh
```
Output: 
* datasets in  ```data/``` folder and ```compiled_data/``` folder
* file_info.csv file containing file feature information

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
