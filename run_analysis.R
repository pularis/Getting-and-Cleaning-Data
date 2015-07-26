# Read the activity labels
activityLabels <-  read.table("UCI HAR Dataset/activity_labels.txt")

# Read the features list
features <-  read.table("UCI HAR Dataset/features.txt")

# Load Training Data
training <-  read.table("UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

# Load Testing Data
testing <-  read.table("UCI HAR Dataset/test/X_test.txt")
Y_test <-  read.table("UCI HAR Dataset/test/Y_test.txt")
subject_test <-  read.table("UCI HAR Dataset/test/subject_test.txt")

# Project Problem 1 - Merges the training and the test sets to create one data set.

maindf  <-  rbind(training, testing)
colnames(maindf) <- features$V2

activity <- rbind(Y_train,Y_test)
subject <- rbind(subject_train,  subject_test)

colnames(activity) <- "Activity"
colnames(subject) <- "Subject"
DF  <- cbind(maindf,activity,subject)

# Project Problem 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 

mycol <- grep("mean|std", features$V2, ignore.case = TRUE)

# Filter out mean and std and add back subject and activity

FilteredDF <- DF[,c(mycol,562,563)]

# Course Problem 3 - Uses descriptive activity names to name the activities in the data set

# Loop to code the activity number to levels ( from activitylabels data )

for (i in 1:nrow(activityLabels)){
  FilteredDF$Activity[FilteredDF$Activity == i] <- as.character(activityLabels$V2[i])
}

# Course Problem 4 - Appropriately labels the data set with descriptive variable names. 
# features_info.txt file has details of naming

mynames <- colnames(FilteredDF)
mynames<-gsub("Acc", "Accelerometer_", mynames)
mynames<-gsub("Gyro", "Gyroscope_", mynames)
mynames<-gsub("^t", "Time_", mynames)
mynames<-gsub("tBody", "Time_Body_", mynames)
mynames<-gsub("^f", "FFT_", mynames)

colnames(FilteredDF) <- mynames

# Course Problem 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Exluding the subject and activity columns in mean calculations

tidydata = aggregate(FilteredDF[,1:86], by=list(Activity = FilteredDF$Activity, Subject=FilteredDF$Subject), mean)

# Data frame of 180 rows is generated ( 30 subjects X 6 Activities )

write.table(tidydata, "tidy.txt", sep=",", row.name=FALSE)