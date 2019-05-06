# Author: Amy
#
# This file reads in information on all current data files and 
# generates 100 scripts with random combinations of commands
#
# Output: model/script_info.csv

import random


random.seed(10)

#Read in file info and create dictionary
file_info = {} #Dictionary to hold file information
info = open("output_files/temp/size_rows_cols.log", "r") 
next(info)
for line in info:
	line = line.split(" ")
	fil = line[0].split("CloudComputing/")[1]
	size = int(line[1])
	rows = int(line[2])
	cols = int(line[3])
	file_info[fil] = (size, rows, cols)
info.close()

#Separate files into test and train
train_index = random.sample(range(0, len(file_info.keys())), 75)
train_files = []
test_files = []
for i in range(0, len(file_info.keys())):
        if i in train_index:
                train_files.append(file_info.keys()[i])
        else:
                test_files.append(file_info.keys()[i])

#List of commands to generate from 
commands = ["sort", "min", "max", "grep"] 

#Genreate 70 train scripts and 30 test scripts
script_info = {}
info = open("model/script_info.csv", "w")
info.write("script_id, sort_num, sort_size, sort_rows, min_num, min_size, min_rows, max_num, max_size, max_rows, grep_num, grep_size, grep_rows, total_size\n")
script_count = 0
while script_count != 100:
	script_count +=1	

	#Reset script info
	for c in commands:
		script_info[c] = (0, 0, 0) #Each tupe is (number of commands, file size, file rows)

	#Randomly select number of commands 
	num_commands = random.choice([4,5,6,7])
	script_file = open("scripts/" + str(script_count) + "_script.sh", "w")
	for i in range(0, num_commands):
		command = random.choice(commands) #random command
		if script_count <= 70: 
			fil = random.choice(train_files) #random train file
		else: 
			fil = random.choice(test_files) #random test file
		col = str(random.choice(range(1, file_info[fil][2]))) #random column 
		
		#Update script info
		og_info = script_info[command]
		new_info = (1, file_info[fil][0], file_info[fil][1])
		script_info[command] = tuple(sum(s) for s in zip(og_info, new_info)) #Add onto existing file size and rows
				
		#Write onto script
		if command == "max":  
			script_file.write("awk 'BEGIN { max=0 } $" + col + " > max { max=$" + col + "; name=$" + col + " } END { print name }' FS=\",\" " +  fil + "\n")
		elif command == "min": 
			script_file.write("awk 'BEGIN { min=1000000 } $" + col + " < min { min=$" + col + "; name=$" + col + " } END { print name }' FS=\",\" " +  fil + "\n")
		elif command == "sort":
			script_file.write("sort --field-separator=\",\" --key=" + col + " " + fil + "\n")
                elif command == "grep":
                        f = open(fil, "r")
                        line = f.readline()   
                        word = line.split(",")[int(col)].rstrip() #word to grep from random col         
                        f.close()  
                        script_file.write("grep " + word + " " + fil + "\n")

	#Output script info
	info.write(str(script_count)) #write script id
	total_size = 0
	for c in commands:
		total_size += script_info[c][1]
		info.write("," + str(script_info[c][0]) + "," + str(script_info[c][1]) + "," + str(script_info[c][2])) #write file size and row of command
	info.write("," + str(total_size) + "\n")
	script_file.close()

info.close()
