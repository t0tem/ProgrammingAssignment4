## this script cleans and transforms the data from 
## 'Human Activity Recognition Using Smartphones Dataset'
## which is avalable here:
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


# step 0
#importing data
xtrain <- read.table("Dataset/train/X_train.txt")
ytrain <- read.table("Dataset/train/y_train.txt")
xtest <- read.table("Dataset/test/X_test.txt")
ytest <- read.table("Dataset/test/y_test.txt")
act_names <- read.table("Dataset/activity_labels.txt", stringsAsFactors = F)
features <- read.table("Dataset/features.txt",  stringsAsFactors = F)

# step 1
# Script merges the training and the test sets to create one data set

#merging data together
xglobal <- rbind(xtrain, xtest)

#merging labels together
yglobal <- rbind(ytrain, ytest)

#assigning appropriate names for variables in main data frame
names(xglobal) <- features[,2]

#assigning appropriate names for activities
names(yglobal)[1] <- names(act_names)[1] <- "actcode"
names(act_names)[2] <- "actlabel"

#merging activity data with labels 
yglobal1  <- (merge(yglobal, act_names, by = "actcode")) # не работает... меняет порядок.

#http://stackoverflow.com/questions/15303283/how-to-do-vlookup-and-fill-down-like-in-excel-in-r










