# Getting and Cleaning Data Course Project

## Steps followed in the script `run_analysis.R`

1. Merges the training and the test sets to create one data set.
   1. Download and unzip the dataset.
   2. All the data files are read.
   3. The column names are assigned acording to the names indicated in the features file.
   4. The data from y, subject and x are combined by columns.
   5. The data from train and test are combined by rows.

2. Extracts only the measurements on the mean and standard deviation for each measurement.
   1. Columns that contain the string std and mean are selected.

3. Uses descriptive activity names to name the activities in the data set.
   1. The activity id is replaced by its name, indicated in the file `activity_labels.txt`.

4. Appropriately labels the data set with descriptive variable names.
   1. Renamed column names by deleting special characters and expanding abreviations.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
   1. The mean is calculated.
   2. The dataset is exported to the `tidyDataSet.txt` file.