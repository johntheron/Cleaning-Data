## Download the data file and unzip


fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "fitdata.zip")
dateDownloaded <- date()
unzip("fitdata.zip")

## Read the data into R tables
setwd("~/Coursera/Fitness/UCI HAR Dataset/test")
subjecttest <- read.table("subject_test.txt")
ytest <- read.table("y_test.txt")
xtest <- read.table("X_test.txt")
setwd("~/Coursera/Fitness/UCI HAR Dataset/train")
subjecttrain <- read.table("subject_train.txt")
ytrain <- read.table("y_train.txt")
xtrain <- read.table("X_train.txt")

## Merge the subject, activity and feature data for test and train, and then merge test and train
testm <- cbind(subjecttest,ytest,xtest)
trainm <- cbind(subjecttrain,ytrain,xtrain)
allm <- rbind(testm,trainm)

## Add descriptive labels
features<-read.csv("~/coursera/Fitness/UCI HAR Dataset/features.txt",header=FALSE, sep='')
labels <- c("Subject", "Activity", as.character(paste(features$V1, features$V2)))
names(allm) <- c(labels)

##  Extract mean and standard deviation data (and keep Subject and Activity )
allmean <- select(allm,matches("Subject|Activity|mean|std"))

## Use descriptive activity names
activities<-read.csv("~/coursera/Fitness/UCI HAR Dataset/activity_labels.txt",header=FALSE, sep='')
allmean$Activity <- activities$V2[allmean$Activity]

## Create the new tidy data set with averages
allmeanmelt <- melt(allmean, id = c("Subject","Activity"))
fitnessaverages <- dcast(allmeanmelt, Subject + Activity ~ variable,mean) 

# Create text file for uploading
write.table(fitnessaverages, "fitnessaverages.txt", row.names = FALSE)
