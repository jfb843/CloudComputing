import pandas as pd
import numpy as np
import os

path = "data/"
files = []

for r, d, f in os.walk(path):
	for file in f:
		if '.csv' in file:
			files.append([os.path.join(r, file), file.split(".csv")[0]])

print(files)

for i in range(len(files)):
	for j in range(i+1, len(files)):
		# df1 = pd.read_csv("Mall_Customers.csv")
		# df2 = pd.read_csv("heart.csv")
		df1 = pd.read_csv(files[i][0])
		df2 = pd.read_csv(files[j][0])

		# combine by COLUMN
		result = pd.concat([df1, df2], axis=1)
		result.reset_index(inplace=True, drop=True) 

		# drop excess rows with missing values
		result.replace("", np.nan, inplace=True)
		df = result.dropna(how='any')

		output_file = path + "/" + files[i][1] + "-" + files[j][1] + ".csv"
		df.to_csv(output_file, index=False)
		print(df.shape) # output (rows, cols)