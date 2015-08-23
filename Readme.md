Getting and Cleaning Data Course Project
========================================

This repository contains the code for my solution to the assignment of the course "Getting and Cleaning Data". 

## Description of the assignment

One of the most exciting areas in all of data science right now is wearable computing - see for example this article ( http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/ ). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## to get this solution to run perform the following steps:

* 1. Place the scripts *run_analysis.R* in your working directory.
* 2. Make sure the plyr package is instaaled in RStudio
* 3. Load the source *run_analysis.R* at your session in R, with **`source("run_analysis.R")`**
* 4. Execute **`run.analysis()`** in R.
* 5. This R solution generates a new tidy dataset called dataNowTidy.txt in your working directory


