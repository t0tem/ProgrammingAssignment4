## this script cleans and transforms the data from 
## 'Human Activity Recognition Using Smartphones Dataset'
## which is avalable here:
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
## following the steps described in Programming Assignment 4 of 'Data Science'
## specialization on Coursera: "getting-and-cleaning-data-course-project"

## step 0
##importing data
xtrain <- read.table("Dataset/train/X_train.txt")
ytrain <- read.table("Dataset/train/y_train.txt")
xtest <- read.table("Dataset/test/X_test.txt")
ytest <- read.table("Dataset/test/y_test.txt")
act_names <- read.table("Dataset/activity_labels.txt", stringsAsFactors = F)
features <- read.table("Dataset/features.txt",  stringsAsFactors = F)
subjtrain <- read.table("Dataset/train/subject_train.txt")
subjtest <- read.table("Dataset/test/subject_test.txt")

## step 1
##merging the training and the test sets to create one data set

#merging data together
xglobal <- rbind(xtrain, xtest)

## step 2
##Extracting only the measurements on the mean and standard deviation for each measurement

#assigning appropriate names for variables in main data frame
names(xglobal) <- features[,2]

#getting a vector of positions of 'mean' and 'std' vars in global data set
pos <- grep("mean|std", names(xglobal))

#subsetting global data set for only 'mean' and 'std'
xMeanStd <- xglobal[,pos] 

## step 3
##Adding descriptive activity names

#merging activities together
yglobal <- rbind(ytrain, ytest)

#assigning appropriate names for activities
names(yglobal)[1] <- names(act_names)[1] <- "actcode"
names(act_names)[2] <- "actlabel"

#merging activity codes with labels using 'join' from 'plyr'
#solution #2 from http://stackoverflow.com/a/15307710/6730044

library(plyr)

yglobal1 <- plyr::join(yglobal, act_names, by="actcode")

#checking if the order of records is still ok. to do this we check if 
#comparing 2 vectors gives a vector of all 'TRUE's

if (!(sum(yglobal[,1] == yglobal1[,1]) == length(yglobal[,1]))) {
    stop("smth wrong with order of recodrs in var yglobal1")
}

#merging subjects together
subjglobal <- rbind(subjtrain, subjtest)

#assigning names for subjects
names(subjglobal) <- "subjcode"

## step 4
##Creating the first tidy data set with appropriate labelsand descriptive variable names
...









