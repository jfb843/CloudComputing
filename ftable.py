import csv
import pandas as pd

with open('size_rows_cols.log', 'r') as logfile, open('feature_table.csv', 'w') as csvfile:
    reader = csv.reader(logfile, delimiter=' ')
    writer = csv.writer(csvfile)
    writer.writerow(['filename', 'size', 'rows', 'cols'])
    writer.writerows(reader)
