# Cleaning-Data
The run_analysis.R script operates on this data  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip to create this tidy data set: https://github.com/johntheron/Cleaning-Data/blob/master/fitnessaverages.txt

The R script does the following:
1.  Downloads and unzips the raw data.
2.  Reads the data into R
3.  Merges the test and train data
4.  Labels the variables and uses descriptions for activites.
5.  Extracts mean and standard deviation data
6.  Melts and recasts the data as the new tidy data set.
7.  Writes the tidy data set to the text file.
