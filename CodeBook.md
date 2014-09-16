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

The following variables are extracted from source datafiles and gruoped by activity and subject. For grouped data mean value is calculated:
 [1] "ActivityType"                    "Activity"                       
 [3] "Subject"                         "tBodyAcc-mean()-X"              
 [5] "tBodyAcc-mean()-Y"               "tBodyAcc-mean()-Z"              
 [7] "tBodyAcc-std()-X"                "tBodyAcc-std()-Y"               
 [9] "tBodyAcc-std()-Z"                "tGravityAcc-mean()-X"           
[11] "tGravityAcc-mean()-Y"            "tGravityAcc-mean()-Z"           
[13] "tGravityAcc-std()-X"             "tGravityAcc-std()-Y"            
[15] "tGravityAcc-std()-Z"             "tBodyAccJerk-mean()-X"          
[17] "tBodyAccJerk-mean()-Y"           "tBodyAccJerk-mean()-Z"          
[19] "tBodyAccJerk-std()-X"            "tBodyAccJerk-std()-Y"           
[21] "tBodyAccJerk-std()-Z"            "tBodyGyro-mean()-X"             
[23] "tBodyGyro-mean()-Y"              "tBodyGyro-mean()-Z"             
[25] "tBodyGyro-std()-X"               "tBodyGyro-std()-Y"              
[27] "tBodyGyro-std()-Z"               "tBodyGyroJerk-mean()-X"         
[29] "tBodyGyroJerk-mean()-Y"          "tBodyGyroJerk-mean()-Z"         
[31] "tBodyGyroJerk-std()-X"           "tBodyGyroJerk-std()-Y"          
[33] "tBodyGyroJerk-std()-Z"           "tBodyAccMag-mean()"             
[35] "tBodyAccMag-std()"               "tGravityAccMag-mean()"          
[37] "tGravityAccMag-std()"            "tBodyAccJerkMag-mean()"         
[39] "tBodyAccJerkMag-std()"           "tBodyGyroMag-mean()"            
[41] "tBodyGyroMag-std()"              "tBodyGyroJerkMag-mean()"        
[43] "tBodyGyroJerkMag-std()"          "fBodyAcc-mean()-X"              
[45] "fBodyAcc-mean()-Y"               "fBodyAcc-mean()-Z"              
[47] "fBodyAcc-std()-X"                "fBodyAcc-std()-Y"               
[49] "fBodyAcc-std()-Z"                "fBodyAcc-meanFreq()-X"          
[51] "fBodyAcc-meanFreq()-Y"           "fBodyAcc-meanFreq()-Z"          
[53] "fBodyAccJerk-mean()-X"           "fBodyAccJerk-mean()-Y"          
[55] "fBodyAccJerk-mean()-Z"           "fBodyAccJerk-std()-X"           
[57] "fBodyAccJerk-std()-Y"            "fBodyAccJerk-std()-Z"           
[59] "fBodyAccJerk-meanFreq()-X"       "fBodyAccJerk-meanFreq()-Y"      
[61] "fBodyAccJerk-meanFreq()-Z"       "fBodyGyro-mean()-X"             
[63] "fBodyGyro-mean()-Y"              "fBodyGyro-mean()-Z"             
[65] "fBodyGyro-std()-X"               "fBodyGyro-std()-Y"              
[67] "fBodyGyro-std()-Z"               "fBodyGyro-meanFreq()-X"         
[69] "fBodyGyro-meanFreq()-Y"          "fBodyGyro-meanFreq()-Z"         
[71] "fBodyAccMag-mean()"              "fBodyAccMag-std()"              
[73] "fBodyAccMag-meanFreq()"          "fBodyBodyAccJerkMag-mean()"     
[75] "fBodyBodyAccJerkMag-std()"       "fBodyBodyAccJerkMag-meanFreq()" 
[77] "fBodyBodyGyroMag-mean()"         "fBodyBodyGyroMag-std()"         
[79] "fBodyBodyGyroMag-meanFreq()"     "fBodyBodyGyroJerkMag-mean()"    
[81] "fBodyBodyGyroJerkMag-std()"      "fBodyBodyGyroJerkMag-meanFreq()"
