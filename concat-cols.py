import pandas as pd
import numpy as np
import os
import sys

path = "compiled_data/"
# files = []

# for r, d, f in os.walk(path):
# 	for file in f:
# 		if '.csv' in file:
# 			files.append([os.path.join(r, file), file.split(".csv")[0]])

# print(files)

file1 = sys.argv[1]
file2 = sys.argv[2]
name = file1.split("/")[-1]
name2 = file2.split("/")[-1]

df1 = pd.read_csv(file1)
df2 = pd.read_csv(file2)
print(file1, file2)

# combine by COLUMN
result = pd.concat([df1, df2], axis=1)
result.reset_index(inplace=True, drop=True) 

# drop excess rows with missing values
result.replace("", np.nan, inplace=True)
df = result.dropna(how='any')

output_file = path + name + "-" + name2 + ".csv"
df.to_csv(output_file, index=False)
print("shape", df.shape) # output (rows, cols)
