## create one R script called run_analysis.R that does the following. 
    ## 1.Merges the training and the test sets to create one data set.
    ## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
    ## 3. Uses descriptive activity names to name the activities in the data set
    ## 4. Appropriately labels the data set with descriptive variable names. 
    ## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## create a folder for this work on local
if(!file.exists("./data")){dir.create("./data")}

## download the zipped file to local
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/smartphonesData.zip", mode = "wb")

## unzip files
unzip(zipfile="./data/smartphonesData.zip",exdir="./data")

## get all the names and details of the files
filePath <- file.path("./data" , "UCI HAR Dataset")
filesLst<-list.files(filePath, recursive=TRUE)

## read the activity files
dActivityTest  <- read.table(file.path(filePath, "test" , "Y_test.txt" ),header = FALSE)
dActivityTrain <- read.table(file.path(filePath, "train", "Y_train.txt"),header = FALSE)

##Read the Subject files
dsubjectTrain <- read.table(file.path(filePath, "train", "subject_train.txt"),header = FALSE)
dsubjectTest  <- read.table(file.path(filePath, "test" , "subject_test.txt"),header = FALSE)

##Read Fearures files
dfeaturesTest  <- read.table(file.path(filePath, "test" , "X_test.txt" ),header = FALSE)
dfeaturesTrain <- read.table(file.path(filePath, "train", "X_train.txt"),header = FALSE)

##Concatenate the data tables by rows
dataSubject <- rbind(dsubjectTrain, dsubjectTest)
dataActivity<- rbind(dActivityTrain, dActivityTest)
dataFeatures<- rbind(dfeaturesTrain, dfeaturesTest)

## set names for each variable
names(dataSubject)<-c("subject")
names(dataActivity)<- c("activity")
dataFeaturesNames <- read.table(file.path(filePath, "features.txt"),head=FALSE)
names(dataFeatures)<- dataFeaturesNames$V2

##Merge columns to get the data frame Data for all data
dataCombine <- cbind(dataSubject, dataActivity)
Data <- cbind(dataFeatures, dataCombine)

##Find the mean and standard deviation for each measurement
subdataFeaturesNames<-dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]

##Subset the data frame Data by seleted names of Features
selectedNames<-c(as.character(subdataFeaturesNames), "subject", "activity" )
Data<-subset(Data,select=selectedNames)

##Uses descriptive activity names to name the activities in the data set
##first find current activitynames
activityLabels <- read.table(file.path(filePath, "activity_labels.txt"),header = FALSE)

##second, labell with proper descriptive names
names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))

##final step, Creates a second,independent tidy data set (with means) and ouput it 
library(plyr);

dataTidy<-aggregate(. ~subject + activity, Data, mean)
dataTidy<-dataTidy[order(dataTidy$subject,dataTidy$activity),]
write.table(dataTidy, file = "dataNowTidy.txt",row.name=FALSE)


