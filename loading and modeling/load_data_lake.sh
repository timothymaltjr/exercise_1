#!/bin/sh

# Assumes all scripts have been run to setup Hadoop HDFS, Hadoop Yarn, Hive, PostgreSQL per labs.
# Assumes user is w205.

# Grab the data from the MediCare website, and rename it as data1.zip.

wget -O data1.zip "https://data.medicare.gov/views/bg9k-emty/files/Nqcy71p9Ss2RSBWDmP77H1DQXcyacr2khotGbDHHW_s?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip"

# Extract the zipped file to a folder named data.

mkdir data
unzip data1.zip -d data
cd data

# Remove headers and rename the files.

tail -n +2 'Timely and Effective Care - Hospital.csv' > effectivecare.csv
tail -n +2 'Readmissions and Deaths - Hospital.csv' > readmissions.csv
tail -n +2 'hvbp_hcahps_05_28_2015.csv' > surveys.csv

# Load the files into HDFS.

hdfs dfs -mkdir /user/w205/hospital_compare
hdfs dfs -mkdir /user/w205/hospital_compare/effectivecare
hdfs dfs -mkdir /user/w205/hospital_compare/readmissions
hdfs dfs -mkdir /user/w205/hospital_compare/surveys
hdfs dfs -put effectivecare.csv /user/w205/hospital_compare/effectivecare
hdfs dfs -put readmissions.csv /user/w205/hospital_compare/readmissions
hdfs dfs -put surveys.csv /user/w205/hospital_compare/surveys
