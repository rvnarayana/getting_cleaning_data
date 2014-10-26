# Data Dictionary - Course Project  
##Overview of the output data
The output data in the file course_project_output.txt pertains to measurements from an experiment carried out on 30 volunteers performing 6 different activities(LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS). The raw data from the results of the experiment is available as a zip file at the URL https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The zip file has two data sets for training and testing respectively. 

Following data elements from the training and test data sets were utilized to produce final output:  
* A 561-feature vector indicating time and ferquency domain measurements from the experiement. Each row of the vector represents data for a specific subject and activity combination.
* Activity vector that associates an activity label with each row of the feature vector. 
* ID of the subject who participated in the experiment.
* Activity label to activity name mapping
* Variable names for feature vector

##Transformations performed 

Following transformations are performed on the raw data to arrive at the final output (tidy data set) :   
* Join the feature vector (X_train/X_test.txt), Activity vector(Y_train/Y_test.txt) and subject_ ID vector(subject_train/subject_test.txt).
* Merge training and test data sets.
* Extract columns representing mean and standard deviation fir each measurement.
* Replace activity labels with respective activity names.
* change variable names to descriptive names
* Create tidy data set with average of each variable for each activity and each subject.
* Write the final output into a file.

##Description of output variables 

**activityname**  
	Name of the activity. Can have one of the following values :   
	* LAYING   
	* SITTING   
	* STANDING   
	* WALKING   
	* WALKING_DOWNSTAIRS   
	* WALKING_UPSTAIRS   

**subjectid**   
	Indicates the ID assigned to each person participating in the experiment. Value ranges between 1 and 30.

**averageTimeDomainBodyAccelarationMeanX**   
	Average value of time domain mean body accelaration along X axis by each activity and subject ID.

**averageTimeDomainBodyAccelarationMeanY**   
	Average value of time domain mean body accelaration along Y axis by each activity and subject ID.

**averageTimeDomainBodyAccelarationMeanZ**   
	Average value of time domain mean body accelaration along Z axis by each activity and subject ID.

**averageTimeDomainBodyAccelarationStdevX**   
	Average value of time domain standard deviation for body accelaration along X axis by each activity and subject ID.

**averageTimeDomainBodyAccelarationStdevY**   
	Average value of time domain standard deviation for body accelaration along Y axis by each activity and subject ID.

**averageTimeDomainBodyAccelarationStdevZ**   
	Average value of time domain standard deviation for body accelaration along Z axis by each activity and subject ID.

**averageTimeDomainGravityAccelarationMeanX**   
	Average value of time domain mean gravity accelaration along X axis by each activity and subject ID.

**averageTimeDomainGravityAccelarationMeanY**   
	Average value of time domain mean gravity accelaration along Y axis by each activity and subject ID.

**averageTimeDomainGravityAccelarationMeanZ**   
	Average value of time domain mean gravity accelaration along Z axis by each activity and subject ID.

**averageTimeDomainGravityAccelarationStdevX**   
	Average value of time domain standard deviation for gravity accelaration along X axis by each activity and subject ID.

**averageTimeDomainGravityAccelarationStdevY**   
	Average value of time domain standard deviation for gravity accelaration along Y axis by each activity and subject ID.

**averageTimeDomainGravityAccelarationStdevZ**   
	Average value of time domain standard deviation for gravity accelaration along Z axis by each activity and subject ID.

**averageTimeDomainBodyAccelarationJerkMeanX**   
	Average value of time domain mean body accelaration jerk along X axis by each activity and subject ID.

**averageTimeDomainBodyAccelarationJerkMeanY**   
	Average value of time domain mean body accelaration jerk along Y axis by each activity and subject ID.

**averageTimeDomainBodyAccelarationJerkMeanZ**   
	Average value of time domain mean body accelaration jerk along Z axis by each activity and subject ID.

**averageTimeDomainBodyAccelarationJerkStdevX**   
	Average value of time domain standard deviation for body accelaration jerk along X axis by each activity and subject ID.

**averageTimeDomainBodyAccelarationJerkStdevY**   
	Average value of time domain standard deviation for body accelaration jerk along Y axis by each activity and subject ID.

**averageTimeDomainBodyAccelarationJerkStdevZ**   
	Average value of time domain standard deviation for body accelaration jerk along Z axis by each activity and subject ID.

**averageTimeDomainBodyGyroscopeMeanX**   
	Average value of time domain mean body angular velocity along X axis by each activity and subject ID.

**averageTimeDomainBodyGyroscopeMeanY**   
	Average value of time domain mean body angular velocity along X axis by each activity and subject ID.

**averageTimeDomainBodyGyroscopeMeanZ**   
	Average value of time domain mean body angular velocity along X axis by each activity and subject ID.

**averageTimeDomainBodyGyroscopeStdevX**   
	Average value of time domain standard deviation for body angular velocity along X axis by each activity and subject ID.

**averageTimeDomainBodyGyroscopeStdevY**   
	Average value of time domain standard deviation for body angular velocity along Y axis by each activity and subject ID.

**averageTimeDomainBodyGyroscopeStdevZ**   
	Average value of time domain standard deviation for body angular velocity along Z axis by each activity and subject ID.

**averageTimeDomainBodyGyroscopeJerkMeanX**   
	Average value of time domain mean body angular velocity jerk along X axis by each activity and subject ID.

**averageTimeDomainBodyGyroscopeJerkMeanY**   
	Average value of time domain mean body angular velocity jerk along Y axis by each activity and subject ID.

**averageTimeDomainBodyGyroscopeJerkMeanZ**   
	Average value of time domain mean body angular velocity jerk along Z axis by each activity and subject ID.

**averageTimeDomainBodyGyroscopeJerkStdevX**   
	Average value of time domain standard deviation for body angular velocity jerk along X axis by each activity and subject ID.

**averageTimeDomainBodyGyroscopeJerkStdevY**   
	Average value of time domain standard deviation for body angular velocity jerk along Y axis by each activity and subject ID.

**averageTimeDomainBodyGyroscopeJerkStdevZ**   
	Average value of time domain standard deviation for body angular velocity jerk along Z axis by each activity and subject ID.

**averageTimeDomainBodyAccelarationMagnitudeMean**   
	Average value of time domain mean body accelaration magnitude by each activity and subject ID.

**averageTimeDomainBodyAccelarationMagnitudeStdev**   
	Average value of time domain standard deviation for body accelaration magnitude by each activity and subject ID.

**averageTimeDomainGravityAccelarationMagnitudeMean**   
	Average value of time domain mean gravity accelaration magnitude by each activity and subject ID.

**averageTimeDomainGravityAccelarationMagnitudeStdev**   
	Average value of time domain standard deviation for gravity accelaration magnitude by each activity and subject ID.

**averageTimeDomainBodyAccelarationJerkMagnitudeMean**   
	Average value of time domain standard deviation for body accelaration jerk magnitude by each activity and subject ID.

**averageTimeDomainBodyAccelarationJerkMagnitudeStdev**   
	Average value of time domain standard deviation for body accelaration jerk magnitude by each activity and subject ID.

**averageTimeDomainBodyGyroscopeMagnitudeMean**   
	Average value of time domain mean body angular velocity magnitude by each activity and subject ID.

**averageTimeDomainBodyGyroscopeMagnitudeStdev**   
	Average value of time domain standard deviation for body angular velocity magnitude by each activity and subject ID.

**averageTimeDomainBodyGyroscopeJerkMagnitudeMean**   
	Average value of time domain mean body angular velocity jerk magnitude by each activity and subject ID.

**averageTimeDomainBodyGyroscopeJerkMagnitudeStdev**   
	Average value of time domain standard deviation for body angular velocity jerk magnitude by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationMeanX**   
	Average value of frequency domain mean body accelaration along X axis by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationMeanY**   
	Average value of frequency domain mean body accelaration along Y axis by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationMeanZ**   
	Average value of frequency domain mean body accelaration along Z axis by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationStdevX**   
	Average value of frequency domain standard deviation for body accelaration along X axis by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationStdevY**   
	Average value of frequency domain standard deviation for body accelaration along Y axis by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationStdevZ**   
	Average value of frequency domain standard deviation for body accelaration along Z axis by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationMeanFrequencyX**   
	Average value of frequency domain body accelaration mean frequency along X axis by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationMeanFrequencyY**   
	Average value of frequency domain body accelaration mean frequency along Y axis by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationMeanFrequencyZ**   
	Average value of frequency domain body accelaration mean frequency along Z axis by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationJerkMeanX**   
	Average value of frequency domain mean body accelaration jerk along X axis by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationJerkMeanY**   
	Average value of frequency domain mean body accelaration jerk along Y axis by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationJerkMeanZ**   
	Average value of frequency domain mean body accelaration jerk along Z axis by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationJerkStdevX**   
	Average value of frequency domain standard deviation for body accelaration jerk along X axis by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationJerkStdevY**   
	Average value of frequency domain standard deviation for body accelaration jerk along Y axis by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationJerkStdevZ**   
	Average value of frequency domain standard deviation for body accelaration jerk along Z axis by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationJerkMeanFrequencyX**   
	Average value of frequency domain body accelaration jerk mean frequency along X axis by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationJerkMeanFrequencyY**   
	Average value of frequency domain body accelaration jerk mean frequency along Y axis by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationJerkMeanFrequencyZ**   
	Average value of frequency domain body accelaration jerk mean frequency along Z axis by each activity and subject ID.

**averageFrequencyDomainBodyGyroscopeMeanX**   
	Average value of frequency domain mean body angular velocity along X axis by each activity and subject ID.

**averageFrequencyDomainBodyGyroscopeMeanY**   
	Average value of frequency domain mean body angular velocity along Y axis by each activity and subject ID.

**averageFrequencyDomainBodyGyroscopeMeanZ**   
	Average value of frequency domain mean body angular velocity along Z axis by each activity and subject ID.

**averageFrequencyDomainBodyGyroscopeStdevX**   
	Average value of frequency domain standard deviation for body angular velocity along X axis by each activity and subject ID.

**averageFrequencyDomainBodyGyroscopeStdevY**   
	Average value of frequency domain standard deviation for body angular velocity along Y axis by each activity and subject ID.

**averageFrequencyDomainBodyGyroscopeStdevZ**   
	Average value of frequency domain standard deviation for body angular velocity along Z axis by each activity and subject ID.

**averageFrequencyDomainBodyGyroscopeMeanFrequencyX**   
	Average value of frequency domain body angular velocity mean frequency along X axis by each activity and subject ID.

**averageFrequencyDomainBodyGyroscopeMeanFrequencyY**   
	Average value of frequency domain body angular velocity mean frequency along Y axis by each activity and subject ID.

**averageFrequencyDomainBodyGyroscopeMeanFrequencyZ**   
	Average value of frequency domain body angular velocity mean frequency along Z axis by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationMagnitudeMean**   
	Average value of frequency domain mean body accelaration magnitude by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationMagnitudeStdev**   
	Average value of frequency domain standard deviation for body accelaration magnitude by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationMagnitudeMeanFrequency**   
	Average value of frequency domain body accelaration magnitude mean frequency by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationJerkMagnitudeMean**   
	Average value of frequency domain mean body accelaration jerk magnitude by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationJerkMagnitudeStdev**   
	Average value of frequency domain standard deviation for body accelaration jerk magnitude by each activity and subject ID.

**averageFrequencyDomainBodyAccelarationJerkMagnitudeMeanFrequency**   
	Average value of frequency domain body accelaration jerk magnitude mean frequency by each activity and subject ID.

**averageFrequencyDomainBodyGyroscopeMagnitudeMean**   
	Average value of frequency domain mean body angular velocity magnitude by each activity and subject ID.

**averageFrequencyDomainBodyGyroscopeMagnitudeStdev**   
	Average value of frequency domain standard deviation for body angular velocity magnitude by each activity and subject ID.

**averageFrequencyDomainBodyGyroscopeMagnitudeMeanFrequency**   
	Average value of frequency domain body angular velocity magnitude mean frequency by each activity and subject ID.

**averageFrequencyDomainBodyGyroscopeJerkMagnitudeMean**   
	Average value of frequency domain mean body angular velocity jerk magnitude by each activity and subject ID.

**averageFrequencyDomainBodyGyroscopeJerkMagnitudeStdev**   
	Average value of frequency domain standard deviation for body angular velocity jerk magnitude by each activity and subject ID.

**averageFrequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency**   
	Average value of frequency domain body angular velocity jerk magnitude mean frequency by each activity and subject ID.

