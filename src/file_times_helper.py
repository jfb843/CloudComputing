# Written by Sharmila
# This file is called in generate_file_times.sh
# Helper file to original script ./generate_file_times.sh
# Parses through log file produced by generate_labels.sh to produce csv file

import csv
import pandas as pd

log = open('time_labels.log', 'r')
output = open("file_time_table.csv", "w")

output.write('filename,sort_time,max_time,min_time\n')

file_name = ""
sort_time, max_time, min_time = 0, 0, 0

num = 0
for line in log:
	if num % 10 == 0:
		if num > 1:
			output.write(str(file_name) + "," + str(sort_time) + "," + str(max_time) + "," + str(min_time) + "\n")
		file_name = line.split("CloudComputing/")[1]
		file_name = file_name.split(":")[0]
	if num % 10 == 1:
		sort_time = line.split("real")[1]
		minute = int(sort_time.split('m')[0]) * 60
		seconds = float(sort_time.split('m')[1][:-2]) + minute
		sort_time = seconds
	if num % 10 == 4:
		max_time = line.split("real")[1]
		minute = int(max_time.split('m')[0]) * 60
		seconds = float(max_time.split('m')[1][:-2]) + minute
		max_time = seconds
	if num % 10 == 7:
		min_time = line.split("real")[1]
		minute = int(min_time.split('m')[0]) * 60
		seconds = float(min_time.split('m')[1][:-2]) + minute
		min_time = seconds
	num += 1

output.close()
log.close()

# merge all file information into one table called file_info.csv
features = pd.read_csv('feature_table.csv')
times = pd.read_csv('file_time_table.csv', index_col=None)

result = pd.merge(features.set_index("filename"),times.set_index("filename"), right_index=True, left_index=True).reset_index()

result.to_csv('file_info.csv', index=False)




