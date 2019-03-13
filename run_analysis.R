install.packages("dplyr")    # alternative installation of the %>%
library(dplyr)

# 0 - Download the dataset
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 'Dataset.zip')
unzip(zipfile="./Dataset.zip")
data_dir <- "./UCI HAR Dataset/"

# 1- Merges the training and the test sets to create one data set.

## Read:
x_train <- read.table(file.path(data_dir, "train", "X_train.txt"),header = FALSE)
y_train <- read.table(file.path(data_dir, "train", "y_train.txt"),header = FALSE)
subject_train <- read.table(file.path(data_dir, "train", "subject_train.txt"),header = FALSE)

x_test <- read.table(file.path(data_dir, "test", "X_test.txt"),header = FALSE)
y_test <- read.table(file.path(data_dir, "test", "y_test.txt"),header = FALSE)
subject_test <- read.table(file.path(data_dir, "test", "subject_test.txt"),header = FALSE)

features <- read.table(file.path(data_dir, "features.txt"),header = FALSE)
activity_labels <- read.table(file.path(data_dir, "activity_labels.txt"),header = FALSE)

## Assign col names:
colnames(x_train) <- features[,2]
colnames(x_test) <- features[,2]

colnames(y_train) <- "activity_id"
colnames(y_test) <- "activity_id"

colnames(subject_train) <- "subject_id"
colnames(subject_test) <- "subject_id"

colnames(activity_labels) <- c("activity_id", "activity_name")

## Merge:
all_train <- cbind(y_train, subject_train, x_train)
all_test <- cbind(y_test, subject_test, x_test)

dataset <- rbind(all_train, all_test)
rm(x_train, y_train, subject_train, x_test, y_test, subject_test, features)
  
# 2- Extracts only the measurements on the mean and standard deviation for each measurement.
use_cols <- grepl("activity_id|subject_id|std|mean", colnames(dataset))

dataset <- dataset[, use_cols]

# 3- Uses descriptive activity names to name the activities in the data set
dataset <-  merge(dataset, activity_labels, by='activity_id', all.x=TRUE)

# 4- Appropriately labels the data set with descriptive variable names.
dataset_cols <- colnames(dataset)

## Replace delete parenthesis and -
dataset_cols <- gsub("[\\(\\)-]", "", dataset_cols)

## Replace BodyBody with Body
dataset_cols <- gsub("BodyBody", "Body", dataset_cols)

## Replace abreviations:
dataset_cols <- gsub("^f", "FrequencyDomain_", dataset_cols)
dataset_cols <- gsub("^t", "TimeDomain_", dataset_cols)
dataset_cols <- gsub("Acc", "Accelerometer_", dataset_cols)
dataset_cols <- gsub("Gyro", "Gyroscope_", dataset_cols)
dataset_cols <- gsub("Mag", "Magnitude_", dataset_cols)
dataset_cols <- gsub("Freq", "Frequency", dataset_cols)

dataset_cols <- gsub("Z$", "_Z", dataset_cols)
dataset_cols <- gsub("Y$", "_Y", dataset_cols)
dataset_cols <- gsub("X$", "_X", dataset_cols)

## Replace mean and std:
dataset_cols <- gsub("mean", "Mean", dataset_cols)
dataset_cols <- gsub("std", "StandardDeviation", dataset_cols)

## Replace with new column names:
colnames(dataset) <- dataset_cols

# 5- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
dataset_mean <- dataset %>% group_by(subject_id, activity_name) %>%  summarise_each(funs(mean))
write.table(dataset_mean, "tidyDataSet.txt", row.name=FALSE, quote = FALSE)
