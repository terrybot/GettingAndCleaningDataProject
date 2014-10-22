library(dplyr)

# Read Supplemental data
activity_labels <- read.table("activity_labels.txt", header=FALSE,col.names=c("activity_id","activity"))
features_labels <- read.table("features.txt", header=FALSE,col.names=c("feature_id","feature"))

# Identify mean & std variables
feature_indices <- grep("mean|std", features_labels$feature)
# Create a smaller dataset of only those features we care about
features_desired <- features_labels[feature_indices,]


# Read test data
subject_test <- read.table("./test/subject_test.txt",header=FALSE,col.names=c("subject_id"))
y_test <- read.table("./test/y_test.txt",header=FALSE,col.names=c("activity_id"))
x_test <- read.table("./test/x_test.txt",header=FALSE)

# Extract the mean & std variables from the x_test data set
x_test_mini <- x_test[,feature_indices]

# Create one test set consisting of : subject_d, activity_id, measurements
test_data <- cbind(subject_test, y_test, x_test_mini)

# Read train data
subject_train <- read.table("./train/subject_train.txt",header=FALSE,col.names=c("subject_id"))
y_train <- read.table("./train/y_train.txt",header=FALSE,col.names=c("activity_id"))
x_train <- read.table("./train/x_train.txt",header=FALSE)

 
# Extract the mean & std variables from the x_train data set
x_train_mini <- x_train[,feature_indices]


# Create one training set consisting of : subject_d, activity_id, measurements
train_data <- cbind(subject_train, y_train, x_train_mini)

#train_data & test_data may be safely concatenated because the subject_id's are unique in each one as can be shown by:
table(subject_test)
table(subject_train)

all_data <- rbind(train_data, test_data)
#all_data now has the following variables: subject_id, activity_id, 79 mean & std variables which are still named with V prefix.

# Now let's rename the feature variables in all_data (columns 3-81)  
#      First, we make the feature names "R" friendly by converting dashes to underscores and removing the paranthesis.  
features_desired$feature <- gsub("-","_",features_desired$feature)
features_desired$feature <- sub("\\(\\)","",features_desired$feature)
features_desired$feature <- paste("MEAN_",features_desired$feature,sep="")
#      Second, we convert them feature name (rows) to a single vector for use in colnames call later.
name_vector <- as.vector(features_desired$feature)
#      Last, we assign the new column names to all_data.  Note that columns 1 and 2 are already named correctly, we just
#        include them below for completeness.
colnames(all_data) <- c("subject_id", "activity_id", name_vector)

# And finally, we join on the activity_id to pull in the activity description from activity_labels.  We also re-order the columns so that
#   activity_label follows activity_id (col 2) instead of being left out at the end.
all_data$activity <- activity_labels$activity[match(all_data$activity_id, activity_labels$activity_id)]
all_data <- all_data[,c(1:2,82,3:81)]

# At this point all_data is completely prepared and has the following characteristics:
#   1. It contains both training & test data
#   2. It contains only those features of interest (mean & std)
#   3. All variables are named as needed
#   4. It has been joined to add the activity label

# Now we simply have to calculate the mean for each column of feature timings, grouped by subject & activity.
summarized_data <- all_data %>% group_by( subject_id, activity) %>% summarise_each(funs(mean))

# and write the summarized file
write.table(summarized_data,"har_limited_tidy.txt",row.names=FALSE, sep="|",quote=FALSE)
