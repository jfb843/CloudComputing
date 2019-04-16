import random

#Read in file info and create dictionary
file_info = {} #Dictionary to hold file information
info = open("feature_table.csv", "r")
next(info)
for line in info:
        line = line.split(",")
        fil = line[0]
        size = int(line[1])
        rows = int(line[2])
        cols = int(line[3])
        file_info[fil] = (size, rows, cols)
info.close()

#Separate files into test and train
train_files = file_info.keys()[:70] #70% of files
test_files = file_info.keys()[70:]

#List of commands to generate from
commands = ["sort", "min", "max"] #, "grep", "sum"]

#Genreate 70 train scripts and 30 test scripts
script_info = {}
info = open("script_info.csv", "w")
info.write("script_id, sort_size, sort_rows, min_size, min_rows, max_size, max_rows\n")
script_count = 0
while script_count != 100:
        script_count +=1
        #Reset script info
        for c in commands:
                script_info[c] = (0, 0) #Each tupe is (file size, file rows)

        #Randomly select number of commands
        num_commands = random.choice([2,3,4])
        script_file = open("scripts/" + str(script_count) + "_script.sh", "w")
        for i in range(0, num_commands):
                command = random.choice(commands) #random command
                if script count <= 70:
                        fil = random.choice(train_files) #random train file
                else:
                        fil = random.choice(test_tiles) #random test file
                col = str(random.choice(range(0, file_info[fil][2]))) #random column

                #Update script info
                og_info = script_info[command]
                new_info = (file_info[fil][0], file_info[fil][1])
                script_info[command] = tuple(sum(s) for s in zip(og_info, new_info)) #Add onto existing file size and rows

                #Write onto script
                if command == "max":
                        script_file.write("awk 'BEGIN { max=0 } $" + col + " > max { max=$" + col + "; name=$" + col + " } END { print name }' FS=\",\" " +  fil + "\n")
                elif command == "min":
                        script_file.write("awk 'BEGIN { min=1000000 } $" + col + " < min { min=$" + col + "; name=$" + col + " } END { print name }' FS=\",\" " +  fil + "\n
")
                elif command == "sort":
                        script_file.write("sort --field-separator=\",\" --key=" + col + " " + fil + "\n")

        #Output script info
        info.write(str(script_count)) #write script id
        for c in commands:
                info.write("," + str(script_info[c][0]) + "," + str(script_info[c][1])) #write file size and row of command
        info.write("\n")
        script_file.close()
info.close()              
