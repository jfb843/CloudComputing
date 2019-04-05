mem_labels = open("mem_labels.log", "r")
time_labels = open("time_labels.log", "r")

mems = {}
times = {}
output = open("feature_tbl.csv", "w")
file_id = 1

for line in mem_labels:
        line = line.split()
        byte = line[4]
        fil = line[-1]
        mems[fil] = byte

num = 0
for line in time_labels:
        if num % 4 == 0:
                fil = line.split(':')[0]
        if num % 4 == 1:
                time = line.split()[1]
                minute = int(time.split('m')[0]) * 60
                seconds = float(time.split('m')[1][:-1]) + minute
                times[fil] = seconds
        num += 1

for fil in mems:
        output.write(fil + "," + str(file_id) + "," + mems[fil] + "," + str(times[fil]) + "\n")
        file_id += 1

mem_labels.close()
time_labels.close()
output.close()
