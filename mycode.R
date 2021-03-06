# Directory and filename (txt) of the clean/tidy data
tidydataset <- "./tidy-UCI-HAR-dataset.txt"
# tidydatasetAVG <- "./tidy-UCI-HAR-dataset-AVG.csv"
# Directory and filename (.txt) of the clean/tidy data
tidydatasetAVGtxt <- "./tidy-UCI-HAR-dataset-AVG.txt"

# Merge
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
# Combines data table (train vs test) by rows
x <- rbind(x_train, X_test)
y <- rbind(y_train, y_test)
s <- rbind(subject_train, subject_test)
# Read features labels
features <- read.table("./UCI HAR Dataset/features.txt")
# names to features column
names(features) <- c('feat_id', 'feat_name')
# Search for matches to argument mean or standard deviation (sd)  within each element of character vector
index_features <- grep("-mean\\(\\)|-std\\(\\)", features$feat_name) 
x <- x[, index_features] 
# Replaces all matches of a string features 
names(x) <- gsub("\\(|\\)", "", (features[index_features, 2]))
# Read activity labels
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
# Friendly names to activities column
names(activities) <- c('act_id', 'act_name')
y[, 1] = activities[y[, 1], 2]
names(y) <- "Activity"
names(s) <- "Subject"
# Combines data table by columns
tidyDataSet <- cbind(s, y, x)
# Creates a 2nd, independent tidy data set with the average of each variable for each activity and each subject:
p <- tidyDataSet[, 3:dim(tidyDataSet)[2]] 
tidyDataAVGSet <- aggregate(p,list(tidyDataSet$Subject, tidyDataSet$Activity), mean)
# Activity and Subject name of columns 
names(tidyDataAVGSet)[1] <- "Subject"
names(tidyDataAVGSet)[2] <- "Activity"
# Created csv (tidy data set) in diretory
write.table(tidyDataSet, tidydataset)
# Created csv (tidy data set AVG) in diretory
# write.csv(tidyDataAVGSet, tidydatasetAVG)
# Created txt (tidy data set AVG) in diretory
write.table(tidyDataAVGSet, tidydatasetAVGtxt)
