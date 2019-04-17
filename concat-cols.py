import pandas as pd
import numpy as np
import os

# path = "data/"
# files = []

# for r, d, f in os.walk(path):
# 	for file in f:
# 		if '.csv' in file:
# 			files.append([os.path.join(r, file), file.split(".csv")[0]])

# print(files)

file = sys.argv[1]
file2 = sys.argv[2]
name = file.split(".csv")[0]
name2 = file2.split(".csv")[0]

df1 = pd.read_csv(file)
df2 = pd.read_csv(file2)
print(file, file2)

# combine by COLUMN
result = pd.concat([df1, df2], axis=1)
result.reset_index(inplace=True, drop=True) 

# drop excess rows with missing values
result.replace("", np.nan, inplace=True)
df = result.dropna(how='any')

output_file = path + "/" + name + "-" + name2 + ".csv"
df.to_csv(output_file, index=False)
print("shape", df.shape) # output (rows, cols)