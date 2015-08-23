Code Book
=========

The original data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Variables
* subject  The subject who performed the activity.
* activity The activity performed.

Following variables contains the average of each variable with same name in the original dataset, for each activity and each subject. 
                                     
 "timeBodyAccelerometer-mean()-X"                
 "timeBodyAccelerometer-mean()-Y"                
 "timeBodyAccelerometer-mean()-Z"                
 "timeBodyAccelerometer-std()-X"                 
 "timeBodyAccelerometer-std()-Y"                 
 "timeBodyAccelerometer-std()-Z"                 
 "timeGravityAccelerometer-mean()-X"             
 "timeGravityAccelerometer-mean()-Y"             
 "timeGravityAccelerometer-mean()-Z"             
 "timeGravityAccelerometer-std()-X"              
 "timeGravityAccelerometer-std()-Y"              
 "timeGravityAccelerometer-std()-Z"              
 "timeBodyAccelerometerJerk-mean()-X"            
 "timeBodyAccelerometerJerk-mean()-Y"            
 "timeBodyAccelerometerJerk-mean()-Z"            
 "timeBodyAccelerometerJerk-std()-X"             
 "timeBodyAccelerometerJerk-std()-Y"             
 "timeBodyAccelerometerJerk-std()-Z"             
 "timeBodyGyroscope-mean()-X"                    
 "timeBodyGyroscope-mean()-Y"                    
 "timeBodyGyroscope-mean()-Z"                    
 "timeBodyGyroscope-std()-X"                     
 "timeBodyGyroscope-std()-Y"                     
 "timeBodyGyroscope-std()-Z"                     
 "timeBodyGyroscopeJerk-mean()-X"                
 "timeBodyGyroscopeJerk-mean()-Y"                
 "timeBodyGyroscopeJerk-mean()-Z"                
 "timeBodyGyroscopeJerk-std()-X"                 
 "timeBodyGyroscopeJerk-std()-Y"                 
 "timeBodyGyroscopeJerk-std()-Z"                 
 "timeBodyAccelerometerMagnitude-mean()"         
 "timeBodyAccelerometerMagnitude-std()"          
 "timeGravityAccelerometerMagnitude-mean()"      
 "timeGravityAccelerometerMagnitude-std()"       
 "timeBodyAccelerometerJerkMagnitude-mean()"     
 "timeBodyAccelerometerJerkMagnitude-std()"      
 "timeBodyGyroscopeMagnitude-mean()"             
 "timeBodyGyroscopeMagnitude-std()"              
 "timeBodyGyroscopeJerkMagnitude-mean()"         
 "timeBodyGyroscopeJerkMagnitude-std()"          
 "frequencyBodyAccelerometer-mean()-X"           
 "frequencyBodyAccelerometer-mean()-Y"           
 "frequencyBodyAccelerometer-mean()-Z"           
 "frequencyBodyAccelerometer-std()-X"            
 "frequencyBodyAccelerometer-std()-Y"            
 "frequencyBodyAccelerometer-std()-Z"            
 "frequencyBodyAccelerometerJerk-mean()-X"       
 "frequencyBodyAccelerometerJerk-mean()-Y"       
 "frequencyBodyAccelerometerJerk-mean()-Z"       
 "frequencyBodyAccelerometerJerk-std()-X"        
 "frequencyBodyAccelerometerJerk-std()-Y"        
 "frequencyBodyAccelerometerJerk-std()-Z"        
 "frequencyBodyGyroscope-mean()-X"               
 "frequencyBodyGyroscope-mean()-Y"               
 "frequencyBodyGyroscope-mean()-Z"               
 "frequencyBodyGyroscope-std()-X"                
 "frequencyBodyGyroscope-std()-Y"                
 "frequencyBodyGyroscope-std()-Z"                
 "frequencyBodyAccelerometerMagnitude-mean()"    
 "frequencyBodyAccelerometerMagnitude-std()"     
 "frequencyBodyAccelerometerJerkMagnitude-mean()"
 "frequencyBodyAccelerometerJerkMagnitude-std()" 
 "frequencyBodyGyroscopeMagnitude-mean()"        
 "frequencyBodyGyroscopeMagnitude-std()"         
 "frequencyBodyGyroscopeJerkMagnitude-mean()"    
 "frequencyBodyGyroscopeJerkMagnitude-std()" 

## Transformations

* Created the train and test datasets adding them the subject and the activity.
* Merged the training and the test sets to create one data set.
* Set the column names
* Set descriptive activity names to name the activities in the data set
* Created the second, independent tidy data set with the average of each variable for each activity and each subject. 

