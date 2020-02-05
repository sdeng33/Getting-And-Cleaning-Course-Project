
# Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate the ability to collect,
work with, and clean a data set. The goal is to prepare a tidy data that
is to be used for later analysis.

This GitHub Repository contains the following files:

  - `README.md`, this is the file that explains the analysis files.
  - `TIDYDS.txt`, which contains an independent tidy data set.
  - `CODEBOOK.md`, which indicates all the variables and summaries
    calculated, along with units and all other relevant information.
  - `run_analysis.R`, the R script that was used to create the
    independent tidy data set.

## Study Design

The experiments were carried out with a group of 30 volunteers between
the ages of 19-48. Each person performed six activities (WALKING,
WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) while
wearing a (Samsung Galaxy S II) smartphone on the waist. Using the
smartphone’s embedded accelerometer and gyroscope, 3-axial linear
acceleration and 3-axial angular velocity at a constant rate of 50Hz
measurements were captured. The experiments were video-recorded in order
to label the data manually. The obtained dataset were randomly
partitioned into two sets, where 70% of the volunteers was selected for
generating the training data and 30% the test data. Further information
on this study can be found at [Human Activity Recognition Using
Smartphones Data
Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## The Instruction List

The R script, `run_analysis.R`, does the following:

### Input

1.  Download the dataset [UCI HAR Data
    Set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
    if it does not already exist in the working directory.

2.  Read Data

3.  Merges the training and the test sets to create one data set.

4.  Extracts only the measurements on the mean and standard deviation
    for each measurement.

5.  Uses descriptive activity names to name the activities in the data
    set

6.  Appropriately labels the data set with descriptive variable names.

### Output

7.  From the data set in step 6, creates a second, independent tidy data
    set with the average of each variable for each activity and each
    subject.
