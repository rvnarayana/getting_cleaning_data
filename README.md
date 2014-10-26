**Per the Course Project requirements the run_analysis.R script in this repository does the following :**    
* Reads test and train data sets from input files  
* Extracts data related to the mean and standard deviation for each measurement  
* Replaces activity labels in the data set with descriptive activity names   
* Appropriately labels the data set with descriptive variable names  
* Creates a tidy data set with the average of each measurement for each activity and each subject   
* writes the final output to the file course_project_output.txt

#I. Description of run_analysis.R script   

**Step 1 : Read "Test" and "Train" data sets and join the two data sets**

This step involves following for each data set (test and training) :    

* Read X, Y, and subject data into separate data frames   
* Join these three data frames in the order X, subject, Y using cbind to form a complete data set    
* Use rbind to join train and test data sets to create a complete data set called *_merged_data_*   
  
 
**Step 2 : Extract columns representing mean and standard deviation for each of the measurements**    

* Read feature names from features.txt file and assign them to the column names of merged_data data frame   
* Extract columns related mean, standard deviation, activity ID and subject ID measurements using grep command. Name the new data frame *_mean_std_data_*   


**Step 3 : Replace Activity labels with Activity names**   
* Read Activity Labels file
* Merge with mean_std_data data frame using activity ID(label)
* Drop activity_id column
 
**Step 4 : Appropriately label the data set with descriptive variable names**    
* Update the variable names in mean_std_data frame using _sub()_ function to make them more descriptive.   
* *_The descriptive variable names are retained as Camel Case for ease of reading. Please note the tolower() statement commented out._*    

**Step 5 : Create a tidy data set and write it to a file**    
 
* Using aggregate() function calculate mean for each measurement grouped by subject and activity   
* Order the tidy data set by activity and subject 
* Drop the subject_id and activity_name columns and rename Group1 & 2 columns appropriately   
* Write the data set to the file called course_project_output.txt using write,table() function
 
 ##II. Instructions to run the run_analysis.R script    
 * Download the script run_analysis.R to your desktop from the Github repository
 * Download the zip file _getdata_projectfiles_UCI HAR Dataset.zip_ containing source data provided as part of the project instructions                       
 * Unzip the above file in the same directory where the run_analysis.R script is saved   
 * Open the script run_analysis.R in R studio. Set the current working directory to the directory containing this script.   
 * Source the run_analysis.R script and execute the fucntion run_analysis() to run the script.
 * Upon completion of script execution, the output is saved to the file course_project_output.R in the same directory as the source script.    

 #III. Instructions to read the data from the output file     
 * In R studio, make sure the current working directory is set to the directory where the outpput file exists.
 * Run the command *_tidy_data <- read.table("course_project_output.txt", header=TRUE)_*      
* The data frame tidy_data will contain the output data.     
