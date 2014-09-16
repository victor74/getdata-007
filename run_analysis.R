library(dplyr)
#setwd("./Projects/coursera/UCI HAR Dataset")

# filename definitions
testFilename <- "./test/X_test.txt"
trainFilename <- "./train/X_train.txt"
testActivityTypesFilename <- "./test/y_test.txt"
trainActivityTypesFilename <- "./train/y_train.txt"
testSubjectFilename <- "./test/subject_test.txt"
trainSubjectFilename <- "./train/subject_train.txt"
namesFilename <- "./features.txt"
activityNamesFilename <- "./activity_labels.txt"

# loading files
measNames <- read.csv(file = namesFilename, sep="", header = FALSE)
testDF <- read.csv(file = testFilename, header = FALSE, sep = "")
trainDF <- read.csv(file = trainFilename, header = FALSE, sep = "")
testActivityTypes <- read.csv(file = testActivityTypesFilename, header = FALSE, sep = "")
trainActivityTypes <- read.csv(file = trainActivityTypesFilename, header = FALSE, sep = "")
testSubjects <- read.csv(file = testSubjectFilename, header = FALSE, sep ="")
trainSubjects <- read.csv(file = trainSubjectFilename, header = FALSE, sep = "")
activityNames <- read.csv(file = activityNamesFilename, header = FALSE, sep = "")

# merging
allDF <-rbind(testDF, trainDF)
names(allDF) <- measNames[,2]
filteredDF <- allDF[,grep(".*(std|mean).*", names(allDF), value = TRUE)]

allActivityTypes <- rbind(testActivityTypes, trainActivityTypes)
allDF <- cbind(allActivityTypes, allDF)

allSubjects <- rbind(testSubjects, trainSubjects)
allDF <- cbind(allSubjects, allDF)

names(allDF)[1] <- "Subject"

completeDF <- merge(activityNames, allDF)

names(completeDF)[names(completeDF) == "V2"] <- "Activity"
names(completeDF)[names(completeDF) == "V1"] <- "ActivityType"

# grouping
grouped <- group_by(completeDF, Subject, Activity)

# summarising
summarised <- summarise_each(tbl = grouped, funs(mean))

# outputting
write.table(summarised, file = "tidyDataSet.txt", row.names = FALSE)