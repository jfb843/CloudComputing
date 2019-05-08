# Author: Heather
# This file is called in generate_script_times.sh (synchronous version) and
# in generate_script_times_async.sh (asynchronous version)

import argparse
import pandas as pd
from datetime import datetime


def main():
	parser = argparse.ArgumentParser()
	parser.add_argument("--asynchronous")
	args = parser.parse_args()
	if args.asynchronous == 'True':
		asynchronous()
	else:
		synchronous()


def synchronous():
	"""Take in a log file of runtimes and appends them to script_info.csv"""
	times = {}
	file_id = None
	# get array of runtimes from model/script_labels.log
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


def asynchronous():
	"""Take in haoop job outputs, get runtimes, and generate feature_labels table"""
	script_info_df = pd.read_csv('script_info.csv', index_col='script_id')
	runtimes = {}
	with open('runtimes_async.log', 'r') as log_file:
		index = None
		for line in log_file:
			# get runtime
			if 'hadoopJob' in line:
				line_arr = line.split('state:')
				end_time = line_arr[1].split()[2].strip()[1:-1]  # use DONE state as end
				end_time = datetime.strptime(end_time, '%Y-%m-%dT%H:%M:%S.%fZ')
				start_time = line_arr[3].split()[2].strip()[1:-1]  # use RUNNING state as start
				start_time = datetime.strptime(start_time, '%Y-%m-%dT%H:%M:%S.%fZ')
				runtime = (end_time - start_time).total_seconds()  # runtime in seconds
				# get script info and add to arr
				if index is not None:
					(_, n_async, script_id) = index.split('-')
					script_info = script_info_df.loc[int(script_id)]
					runtimes[index] = [*script_info, int(n_async), runtime]
			# get job index id and num async
			else:
				index = line.strip()

	# create new df for features and labels
	columns = [*script_info_df.columns, 'async_num', 'time']
	df = pd.DataFrame.from_dict(runtimes, orient='index', columns=columns)
	df.index.name = 'script_id'
	df.to_csv('script_feature_labels.csv')


if __name__ == '__main__':
	main()