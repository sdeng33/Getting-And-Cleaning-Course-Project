setwd("C:/Users/y2kyn/OneDrive/Documents")

if(!file.exists("data")){
  dir.create("data")
}

setwd("./data")

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
filename <-"UCI HAR Dataset.zip"

#Checks to see if the required file has been downloaded.  If not, it downloads the file.#
if(!file.exists(filename)){
    download.file(fileUrl, destfile = filename , method = "curl")
}

dir.name <- "UCI HAR Dataset"

#Checks to see if the directory name exists.  If not, it unzips the required file and creates the 
#directory name.#

if(!file.exists(dir.name)){
    unzip(filename)
}

#Resets the working directory.#
setwd("C:/Users/y2kyn/OneDrive/Documents/data/UCI HAR Dataset")

library(dplyr)

#List the activity files.#
train.files <- list.files(path = "train", full.names = TRUE )[-1]
test.files <- list.files(path = "test", full.names = TRUE)[-1]

#Combines all the files specified by variable names below.#
activity.files <- c(train.files[3], test.files[3])
subject.files <- c(train.files[1], test.files[1])
features.files <-c(train.files[2], test.files[2])

#Reads the names of the features and activity labels.# 
feature.names <- read.table("features.txt", col.names = c("number","measurement"), 
                            stringsAsFactors = FALSE)
activity.names <- read.table("activity_labels.txt", col.names = c("activity.id", "activity.label"))

#Reads the above files and assigns them to a specified list shown below.#
activity.list <- lapply(activity.files, read.table, col.names = "Activity", stringsAsFactors = FALSE)
subject.list <- lapply(subject.files, read.table, col.names = "Subject", stringsAsFactors = FALSE)
features.list <- lapply(features.files, read.table, stringsAsFactors = FALSE)

#Creates the data tables as specified below.#
activity <- do.call(rbind, activity.list)
subject <- do.call(rbind, subject.list)
features <- do.call(rbind, features.list)

#Names the columns of the data frame features according to the activity labels.#
names(features) <- feature.names$measurement

# 1. Merges the training and the test sets to create one data set. #
DataSet <- cbind(features, subject, activity)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.#

#Extract the columns with headers that contains the text mean or std.#

ExtractedCols <- grep(".*Mean.*|.*Std.*", names(DataSet), ignore.case=TRUE)

RequisiteCols <- c(ExtractedCols, 562:563)

#Subsets the data frame DataSet by the requisite columns and assigns it to data frame ExtractedDS.#

ExtractedDS <- DataSet[, RequisiteCols]
 
# 3. Uses descriptive activity names to name the activities in the data set.#

#Replace activity values with named factor levels.#

ExtractedDS$Activity <- factor(ExtractedDS$Activity, labels = activity.names$activity.label)

# 4. Appropriately labels the data set with descriptive variable names.

#Gets column names and assigns to vector ColumnNames.#
ColumnNames <- names(ExtractedDS)

#Expands abbreviations and cleans up variable names.#
ColumnNames <- gsub("Acc", "Acceleration", ColumnNames)
ColumnNames <- gsub("angle", "Angle", ColumnNames)
ColumnNames <- gsub("BodyBody", "Body", ColumnNames)
ColumnNames <- gsub("^f", "frequency_domain", ColumnNames)
ColumnNames <- gsub("gravity", "Gravity", ColumnNames)
ColumnNames <- gsub("Gyro", "Gyroscope", ColumnNames)
ColumnNames <- gsub("Mag", "Magnitude", ColumnNames)
ColumnNames <- gsub("-meanFreq", "MeanFrequency", ColumnNames)
ColumnNames <- gsub("-mean", "Mean", ColumnNames)
ColumnNames <- gsub("-std", "Standard_Deviation", ColumnNames)
ColumnNames <- gsub("^t", "time_domain", ColumnNames)
ColumnNames <- gsub("tBody", "time_domainBody", ColumnNames)

# Assigns column names new labels.#
names(ExtractedDS) <- ColumnNames

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

TidyDS <- aggregate(. ~Subject + Activity, ExtractedDS, mean)
TidyDS <- TidyDS[order(TidyDS$Subject, TidyDS$Activity),]
write.table(TidyDS, file = "TidyDS.txt", row.name = FALSE)
