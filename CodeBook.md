Discussed data set contains accelerometers measurements gathered using Samsung phone. Data was gathered from 30 subjects during 6 activities (Walking, Walking Upstairs, Walking Donwstais, Sitting, Standing, Laying). Original data was split into test and training sets and provided as separate files containing: activity labels, maeasurement names, subjects taking part in each experiment, activities per experiment, and measurements itself. Files contain an entry per each experiment per subject.

Codebook:

1. test and training data files were merged together into one dataset (X_test.txt and X_train.txt files)
2. variable names were added to the dataset from features.txt file. Feature number in this file corresponds to a variable column in a dataset obtained in (1)
3. only mean and std variables were filtered out from the dataset. Variable names containing mean or std were filtered out
4. activities from test and training sets were merged together and added as a column to the dataset (y_train.txt and y_train.txt)
5. activities names were added from activity_labels.txt (activity number (first column) corresponds to activity number added in (4))
6. subjects from test and training sets were merged tohgether and added as a column to the dataset (subject_test.txt and subject_train.txt)
7. summary of average values of all variables per subject per activity was produced
8. each resulting line contains averages of all activities per subject per activity
9. data is saved into a text file called analysis_output.txt

Variables:

From source data codebook: 

Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.



For this exercise only following variables are extracted from source datafiles and gruoped by activity and subject. For grouped data mean value is calculated:

"ActivityType"
"Activity"                       
"Subject"
"tBodyAcc-mean()-X"              
"tBodyAcc-mean()-Y"
"tBodyAcc-mean()-Z"              
"tBodyAcc-std()-X"
"tBodyAcc-std()-Y"               
"tBodyAcc-std()-Z"
"tGravityAcc-mean()-X"           
"tGravityAcc-mean()-Y"
"tGravityAcc-mean()-Z"           
"tGravityAcc-std()-X"
"tGravityAcc-std()-Y"            
"tGravityAcc-std()-Z"
"tBodyAccJerk-mean()-X"          
"tBodyAccJerk-mean()-Y"
"tBodyAccJerk-mean()-Z"          
"tBodyAccJerk-std()-X"
"tBodyAccJerk-std()-Y"           
"tBodyAccJerk-std()-Z"
"tBodyGyro-mean()-X"             
"tBodyGyro-mean()-Y"
"tBodyGyro-mean()-Z"             
"tBodyGyro-std()-X"
"tBodyGyro-std()-Y"              
"tBodyGyro-std()-Z"
"tBodyGyroJerk-mean()-X"         
"tBodyGyroJerk-mean()-Y"
"tBodyGyroJerk-mean()-Z"         
"tBodyGyroJerk-std()-X"
"tBodyGyroJerk-std()-Y"          
"tBodyGyroJerk-std()-Z"
"tBodyAccMag-mean()"             
"tBodyAccMag-std()"
"tGravityAccMag-mean()"          
"tGravityAccMag-std()"
"tBodyAccJerkMag-mean()"         
"tBodyAccJerkMag-std()"
"tBodyGyroMag-mean()"            
"tBodyGyroMag-std()"
"tBodyGyroJerkMag-mean()"        
"tBodyGyroJerkMag-std()"
"fBodyAcc-mean()-X"              
"fBodyAcc-mean()-Y"
"fBodyAcc-mean()-Z"              
"fBodyAcc-std()-X"
"fBodyAcc-std()-Y"               
"fBodyAcc-std()-Z"
"fBodyAcc-meanFreq()-X"          
"fBodyAcc-meanFreq()-Y"
"fBodyAcc-meanFreq()-Z"          
"fBodyAccJerk-mean()-X"
"fBodyAccJerk-mean()-Y"          
"fBodyAccJerk-mean()-Z"
"fBodyAccJerk-std()-X"           
"fBodyAccJerk-std()-Y"
"fBodyAccJerk-std()-Z"           
"fBodyAccJerk-meanFreq()-X"
"fBodyAccJerk-meanFreq()-Y"      
"fBodyAccJerk-meanFreq()-Z"
"fBodyGyro-mean()-X"             
"fBodyGyro-mean()-Y"
"fBodyGyro-mean()-Z"             
"fBodyGyro-std()-X"
"fBodyGyro-std()-Y"              
"fBodyGyro-std()-Z"
"fBodyGyro-meanFreq()-X"         
"fBodyGyro-meanFreq()-Y"
"fBodyGyro-meanFreq()-Z"         
"fBodyAccMag-mean()"
"fBodyAccMag-std()"              
"fBodyAccMag-meanFreq()"
"fBodyBodyAccJerkMag-mean()"     
"fBodyBodyAccJerkMag-std()"
"fBodyBodyAccJerkMag-meanFreq()" 
"fBodyBodyGyroMag-mean()"
"fBodyBodyGyroMag-std()"         
"fBodyBodyGyroMag-meanFreq()"
"fBodyBodyGyroJerkMag-mean()"    
"fBodyBodyGyroJerkMag-std()"
"fBodyBodyGyroJerkMag-meanFreq()"
