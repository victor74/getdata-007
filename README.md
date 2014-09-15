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