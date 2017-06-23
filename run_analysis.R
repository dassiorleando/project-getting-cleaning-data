## Load dplyr package
library(dplyr)

## Assuming that we have already download and unzip the data
# Location of the unziped folder: 'UCI HAR Dataset'
folder <- "/Users/dassiorleando/Documents/learn/coursera/Data Science/Getting & Cleaning Data/UCI HAR Dataset"

# Get the initial working directory
past_wd <- getwd()
# Edit the current wd
setwd(folder)
new_wd <- getwd()

## We Build a final tibble for all the data, as it is more powerfull to manipulate it via dplyr
# We get all the activities here
activities <- read.table("activity_labels.txt", header = FALSE)
# print(activities)

# All features recorded
features <- read.table("features.txt", header = FALSE)

# Fix name of variables: drop special characters
featuresV2 <- as.character(features$V2)
featuresV2 <- gsub(")", "", featuresV2, fixed = TRUE)
featuresV2 <- gsub("(", "", featuresV2, fixed = TRUE)
featuresV2 <- gsub(",", "", featuresV2, fixed = TRUE)
featuresV2 <- gsub("-", "", featuresV2, fixed = TRUE)

# The header of our final data: a vector of labels(subject, activities and measurement labels)
header <- c()
header <- c(header, c("subject", "activity", featuresV2))

# Load subject test & train data
subject_test <- read.table("test/subject_test.txt")
subject_train <- read.table("train/subject_train.txt")
# All subjects: merge
subjects <- c(subject_test[, 1], subject_train[, 1])

# All activities recorded and merge them
Y_test <- read.table("test/Y_test.txt")
Y_train <- read.table("train/Y_train.txt")

Y <- c(Y_test[, 1], Y_train[, 1])

# All row of measurement recorded + merge

X_test <- read.table("test/X_test.txt")
X_train <- read.table("train/X_train.txt")

X <- rbind(X_test, X_train)

# We merge all elements into one data set
df <- cbind(subjects, Y, X)

# Delete duplicated variable in the data set and headers
# Set the data with descriptive variables names
names(df) <- header
df <- df[, !duplicated(header)]
df <- tbl_df(df)

# Extract only the measurement of the mean and std for each measurement
# As these fields are correctly named, we will grab all field with word mean and std
data_feature <- df %>% select(subject, activity, contains("mean", ignore.case = TRUE), contains("std", ignore.case = TRUE))

# Descriptive activity names
data <- data_feature %>% mutate(activity = activities[activity, "V2"])

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
summarise_data <- data %>% group_by(subject, activity) %>% summarise_each(funs(mean))

# Write CSV in R
write.csv(data, file = "tidydata.csv", row.names=FALSE)
write.csv(colnames(data), file = "features.csv")

# At the end we reset the wording dir
setwd(past_wd)