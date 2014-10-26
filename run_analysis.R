run_analysis <- function() {
  
  ######################################################################
  # Step 1 - Read "Test" and "Train" data sets and join the two data sets.
  #          This involves following for each data set :
  #          - read X, Y, and subject data into separate data frames
  #          - join these three data frames using cbind to form a complete data set 
  #
  #          Finally, Use rbind to merge train and test data sets
  ######################################################################
  
  # Read Test data from files
  x_test <- read.table("UCI HAR Dataset/test/X_test.txt", stringsAsFactors=FALSE)
  y_test <- read.table("UCI HAR Dataset/test/Y_test.txt", stringsAsFactors=FALSE) 
  subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", stringsAsFactors=FALSE)

  # create Test data set
  test_data <- cbind(x_test, subject_test, y_test)
  
  # Read Training data from files
  x_train <- read.table("UCI HAR Dataset/train/X_train.txt", stringsAsFactors=FALSE)
  y_train <- read.table("UCI HAR Dataset/train/Y_train.txt", stringsAsFactors=FALSE) 
  subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", stringsAsFactors=FALSE)
  
  # create train data set
  train_data <- cbind(x_train, subject_train, y_train)

  #merge Training and Test data sets into one data set
  merged_data <- rbind(train_data, test_data)
   
  #############################################################################
  # Step 1 Completed - merged_data now has training and test data sets combined
  #############################################################################
  
  ############################################################################
  # Step 2 - Extract Columns representing mean and standard deviation for each  
  #          measurement.
  ############################################################################

  #set column headings to feature names from the features.txt file
  features <- read.table("UCI HAR Dataset/features.txt")
  names(merged_data) <- features[,2]
  
  # setting column names for activity_id and subject_id 
  colnames(merged_data)[ncol(merged_data)] <- "activity_id"
  colnames(merged_data)[ncol(merged_data)-1] <- "subject_id" 

  # extract columns representing mean and standard deviation measurements using grep
  mean_std_data <- merged_data[, grep("mean|std|activity_id|subject_id", names(merged_data), value=TRUE)]
    
  
  ########################################################################
  # step2 completed - mean_std_data data frame now contains only mean and
  #       standard devitation columns related to each measurement.
  ########################################################################
  
  
  ########################################################################
  # Step 3 - Replace Activity label vlaues with Activity names 
  ########################################################################
 
  # Read Activity Labels file so we can replace the activity_id by the respective labels
  activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
  colnames(activity_labels) <- c("activity_id", "activity_name")
  
  # setting column names for activity_id and subject_id in mean_std_data set 
  colnames(mean_std_data)[ncol(mean_std_data)] <- "activity_id"
  colnames(mean_std_data)[ncol(mean_std_data)-1] <- "subject_id" 
  
  # Merge mean_std_data and activity_labels data frames to get activity labels as a new column 
  mean_std_data <- merge(mean_std_data, activity_labels, by="activity_id")
   
  #Drop activity_id column from Merged Data Set so we are left with only activity_name
  mean_std_data$activity_id <- NULL 
   
  ########################################################################
  # Step 3 Completed - The data frame mean_std_data has activity names 
  #        in each row.
  ########################################################################
  
  
  ########################################################################
  ##  Step 4 - Label the data set with descriptive column names
  ########################################################################
 
  names(mean_std_data) <- sub("^f", "FrequencyDomain", names(mean_std_data))
  names(mean_std_data) <- sub("^t", "TimeDomain", names(mean_std_data))
  names(mean_std_data) <- sub("Acc", "Accelaration", names(mean_std_data))
  names(mean_std_data) <- sub("-std\\(\\)", "Stdev", names(mean_std_data))
  names(mean_std_data) <- sub("-mean\\(\\)", "Mean", names(mean_std_data))
  names(mean_std_data) <- sub("Gyro", "Gyroscope", names(mean_std_data))
  names(mean_std_data) <- sub("-meanFreq\\(\\)", "MeanFrequency", names(mean_std_data))
  names(mean_std_data) <- sub("Mag", "Magnitude", names(mean_std_data))
  names(mean_std_data) <- sub("BodyBody", "Body", names(mean_std_data))
  names(mean_std_data) <- sub("-", "", names(mean_std_data))
 
  #names(mean_std_data) <- tolower(names(mean_std_data)) # Convert labels to all lowercase
 
  ########################################################################
  ## Step 4 Completed - The data frame mean_std_data has descritive 
  #         column names
  ########################################################################
  
  ########################################################################
  #  Step 5 - Create a tidy data set
  ########################################################################
 
  ###
  # calculate mean for each measurement grouped by subject and activity using
  # aggregate() function
  ###
   
  tidy_dataset <- aggregate(mean_std_data, by=list(mean_std_data$activity_name, mean_std_data$subject_id), FUN=mean, na.rm=TRUE)
 
  #order the tidy data set by activity and subject 
  tidy_dataset <- tidy_dataset[order(tidy_dataset$Group.1, tidy_dataset$Group.2), ]

  # drop the subject_id and activity_name columns and rename Group1 & 2 columns appropriately
  tidy_dataset$subject_id <- NULL
  tidy_dataset$activity_name <- NULL
  colnames(tidy_dataset)[1:2] <- c("activityname", "subjectid")
  colnames(tidy_dataset)[3:ncol(tidy_dataset)] <- paste("average", colnames(tidy_dataset)[3:ncol(tidy_dataset)], sep="")

  #########################################
  # write the final data set to a text file
  #########################################
  write.table(tidy_dataset, file = "course_project_output.txt",row.names=FALSE, na="")
 
}