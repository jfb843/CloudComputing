import csv
import pandas as pd

with open('time_labels.log', 'r') as logfile, open('time_table.csv', 'w') as csvfile:
    reader = csv.reader(logfile, delimiter=' ')
    writer = csv.writer(csvfile)
    writer.writerow(['filename', 'sort_time', 'max_time', 'min_time'])
    writer.writerows(reader)