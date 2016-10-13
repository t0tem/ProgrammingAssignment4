## ProgrammingAssignment4
####This repo follows programming assignment of'Getting and Cleaning Data Course Project'
####from JHU on Coursera

The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

Original data set is "Human Activity Recognition Using Smartphones Data Set"
that comes from Center for Machine Learning and Intelligent Systems
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

direct link to data set:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

After downloading it should be extracted to folder called 'Dataset' in the working 
directory of R.

here is the full structure of the folder "~/Dataset"

```
.
./activity_labels.txt
./features.txt
./features_info.txt
./README.txt
./test
./test/Inertial Signals
./test/Inertial Signals/body_acc_x_test.txt
./test/Inertial Signals/body_acc_y_test.txt
./test/Inertial Signals/body_acc_z_test.txt
./test/Inertial Signals/body_gyro_x_test.txt
./test/Inertial Signals/body_gyro_y_test.txt
./test/Inertial Signals/body_gyro_z_test.txt
./test/Inertial Signals/total_acc_x_test.txt
./test/Inertial Signals/total_acc_y_test.txt
./test/Inertial Signals/total_acc_z_test.txt
./test/subject_test.txt
./test/X_test.txt
./test/y_test.txt
./train
./train/Inertial Signals
./train/Inertial Signals/body_acc_x_train.txt
./train/Inertial Signals/body_acc_y_train.txt
./train/Inertial Signals/body_acc_z_train.txt
./train/Inertial Signals/body_gyro_x_train.txt
./train/Inertial Signals/body_gyro_y_train.txt
./train/Inertial Signals/body_gyro_z_train.txt
./train/Inertial Signals/total_acc_x_train.txt
./train/Inertial Signals/total_acc_y_train.txt
./train/Inertial Signals/total_acc_z_train.txt
./train/subject_train.txt
./train/X_train.txt
./train/y_train.txt
```

Final script is in the file `run_analysis.R`. It does following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

at the end 2 data sets are created:
`tidy1` (class "data.frame") - answering step 4 of assignment
`tidy2` (class "tbl_df", grouped df) - answering step 5 of assignment
