#!/usr/bin/env bash

# Author: Heather
# This file generates java, mf, and jar files for each of the scripts using
# sample scripts src/sample.java and src/sample.mf

# NOTE: need to use absolute paths (replace with your own path in the java and mf files
sample_java="src/sample.java"
sample_mf="src/sample.mf"

mkdir jars

# create java and manifest files
echo "Creating .java and .mf files..."
for ((i=1;i<101;i++)); do
	fn="script"$i
	script="scripts/"$i"_script.sh"
	# copy format from sample java file, modify for script, and delete comments
	sed "s|sample|$fn|g; s|path_to_script|$script|g; /^\//d" $sample_java > "jars/$fn.java"
	# copy format from the sample manifest file and modify for script
	sed "s|sample|$fn|" $sample_mf > "jars/$fn.mf"
done
echo "All files created!"

# compile java files to jar files
# NOTE: this needs to be performed in the same dir as the java files
# to ensure that the classpath is correct
cd jars
java_files=(*.java)
for java_file in "${java_files[@]}"; do
	fn=`cut -d "." -f1 <<< $java_file`
	echo "Compiling $fn.class and $fn.jar..."
	javac $java_file
	jar cmf $fn.mf $fn.jar $fn.class $java_file
done
echo "All files compiled!"
