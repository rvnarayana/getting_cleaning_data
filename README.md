Per the Course Project requirements the run_analysis.R file in this repository does the following :   
* Reads test and train data sets from input files  
* Extracts data related to the mean and standard deviation for each measurement  
* Replaces activity labels n the data set with descriptive activity names   
* Appropriately labels the data set with descriptive variable names  
* Creates a tidy data set with the average of each variable for each activity and each subject   
* writes the final output to the file course_project_output.txt

## Description of how run_analysis.R works  


**Step 1 - Read "Test" and "Train" data sets and join the two data sets**

This involves following for each data set (test and training) :    

* Read X, Y, and subject data into separate data frames   
* Join these three data frames using cbind to form a coplete data set    
* Use rbind to join train and test data sets to create a complete data set called _merged_data_   
  
 
**Step 2 - Extract columns representing mean and standard deviation for each of the measurements**    

* Extract columns related mean, standard deviation, activity ID and subject ID measurements using grep command. Name the new data frame _mean_std_data_   


Step 3 - Replace Activity Type vlaues with Activity labels
------------------------------------------------------------
  
	- Read Activity Labels file
        - merge with mean_std_data data frame
	- drop activity_id column

 
Step 4 - Replace Activity Type vlaues with Activity labels
------------------------------------------------------------
  
	- Assign self descriptive column names based on features description


Step 5 - Create a tidy data set and write it to a file
------------------------------------------------------------
 
	- Using aggregate() function to calculate mean for each measurement 
	  grouped by subject and activity

	- order the tidy data set by activity and subject 
	- drop the subject_id and activity_name columns and rename Group1 & 2 columns appropriately
	- write the data set to the file called project_output.txt using write,table() function
 
