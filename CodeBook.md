# Raw Data
The raw data for this project are here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Further background information can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Processed Data

## Factor Data
The Subject data are the data from subject_test.txt and subject _train.txt, identifying the subject for each of the records.  
The Activity data are the data from y_test.txt and y_train.txt, identifying the subject's activity at the time of the observation.  Activity_labels.txt gives descriptions of the activities.  

## Variable Data
The next 86 columns are variable data derived from X_test.txt and X_train.txt:   
  Column names were created by concatenating V1 and V2 records from features.txt for each of the 561 variables 
  (to preserve column uniqueness)
  Column containing the strings "mean" or "std" were extracted from the test and train data.
  
The variable data is the arithmetic mean (average) of each variable for each subject and activity.   
  
