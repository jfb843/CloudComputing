# Author: Heather
# This file is called in generate_script_times.sh
# This file takes in a log file of runtimes and appends them to script_info.csv

import pandas as pd


# get array of runtimes from script_labels.log
times = {}
file_id = None
with open('script_labels.log', 'r') as log_file:
	for line in log_file:
		if 'script' in line:
			file_id = int(line.split('/')[-1].split('_')[0])
		elif 'real' in line:
			time = line.split()[1]
			minute = int(time.split('m')[0]) * 60
			seconds = float(time.split('m')[1][:-1]) + minute
			times[file_id] = seconds

# sort by ids
sorted_times_ids = sorted(times.keys())
sorted_times = [times[i] for i in sorted_times_ids]

# append times to dataframe
csv_file = pd.read_csv('script_info.csv', index_col='script_id')
csv_file['time'] = sorted_times
csv_file.to_csv('script_feature_labels.csv')
