# Getting and Cleaning Data - Course Project

## Data Description
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Data Download
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

As part of he course assignment, we only sued the mean and standard deviation data

*	Time_BodyAccelerometer_-mean()-X
*	Time_BodyAccelerometer_-mean()-Y
*	Time_BodyAccelerometer_-mean()-Z
*	Time_BodyAccelerometer_-std()-X
*	Time_BodyAccelerometer_-std()-Y
*	Time_BodyAccelerometer_-std()-Z
*	Time_GravityAccelerometer_-mean()-X
*	Time_GravityAccelerometer_-mean()-Y
*	Time_GravityAccelerometer_-mean()-Z
*	Time_GravityAccelerometer_-std()-X
*	Time_GravityAccelerometer_-std()-Y
*	Time_GravityAccelerometer_-std()-Z
*	Time_BodyAccelerometer_Jerk-mean()-X
*	Time_BodyAccelerometer_Jerk-mean()-Y
*	Time_BodyAccelerometer_Jerk-mean()-Z
*	Time_BodyAccelerometer_Jerk-std()-X
*	Time_BodyAccelerometer_Jerk-std()-Y
*	Time_BodyAccelerometer_Jerk-std()-Z
*	Time_BodyGyroscope_-mean()-X
*	Time_BodyGyroscope_-mean()-Y
*	Time_BodyGyroscope_-mean()-Z
*	Time_BodyGyroscope_-std()-X
*	Time_BodyGyroscope_-std()-Y
*	Time_BodyGyroscope_-std()-Z
*	Time_BodyGyroscope_Jerk-mean()-X
*	Time_BodyGyroscope_Jerk-mean()-Y
*	Time_BodyGyroscope_Jerk-mean()-Z
*	Time_BodyGyroscope_Jerk-std()-X
*	Time_BodyGyroscope_Jerk-std()-Y
*	Time_BodyGyroscope_Jerk-std()-Z
*	Time_BodyAccelerometer_Mag-mean()
*	Time_BodyAccelerometer_Mag-std()
*	Time_GravityAccelerometer_Mag-mean()
*	Time_GravityAccelerometer_Mag-std()
*	Time_BodyAccelerometer_JerkMag-mean()
*	Time_BodyAccelerometer_JerkMag-std()
*	Time_BodyGyroscope_Mag-mean()
*	Time_BodyGyroscope_Mag-std()
*	Time_BodyGyroscope_JerkMag-mean()
*	Time_BodyGyroscope_JerkMag-std()
*	FFT_BodyAccelerometer_-mean()-X
*	FFT_BodyAccelerometer_-mean()-Y
*	FFT_BodyAccelerometer_-mean()-Z
*	FFT_BodyAccelerometer_-std()-X
*	FFT_BodyAccelerometer_-std()-Y
*	FFT_BodyAccelerometer_-std()-Z
*	FFT_BodyAccelerometer_-meanFreq()-X
*	FFT_BodyAccelerometer_-meanFreq()-Y
*	FFT_BodyAccelerometer_-meanFreq()-Z
*	FFT_BodyAccelerometer_Jerk-mean()-X
*	FFT_BodyAccelerometer_Jerk-mean()-Y
*	FFT_BodyAccelerometer_Jerk-mean()-Z
*	FFT_BodyAccelerometer_Jerk-std()-X
*	FFT_BodyAccelerometer_Jerk-std()-Y
*	FFT_BodyAccelerometer_Jerk-std()-Z
*	FFT_BodyAccelerometer_Jerk-meanFreq()-X
*	FFT_BodyAccelerometer_Jerk-meanFreq()-Y
*	FFT_BodyAccelerometer_Jerk-meanFreq()-Z
*	FFT_BodyGyroscope_-mean()-X
*	FFT_BodyGyroscope_-mean()-Y
*	FFT_BodyGyroscope_-mean()-Z
*	FFT_BodyGyroscope_-std()-X
*	FFT_BodyGyroscope_-std()-Y
*	FFT_BodyGyroscope_-std()-Z
*	FFT_BodyGyroscope_-meanFreq()-X
*	FFT_BodyGyroscope_-meanFreq()-Y
*	FFT_BodyGyroscope_-meanFreq()-Z
*	FFT_BodyAccelerometer_Mag-mean()
*	FFT_BodyAccelerometer_Mag-std()
*	FFT_BodyAccelerometer_Mag-meanFreq()
*	FFT_BodyBodyAccelerometer_JerkMag-mean()
*	FFT_BodyBodyAccelerometer_JerkMag-std()
*	FFT_BodyBodyAccelerometer_JerkMag-meanFreq()
*	FFT_BodyBodyGyroscope_Mag-mean()
*	FFT_BodyBodyGyroscope_Mag-std()
*	FFT_BodyBodyGyroscope_Mag-meanFreq()
*	FFT_BodyBodyGyroscope_JerkMag-mean()
*	FFT_BodyBodyGyroscope_JerkMag-std()
*	FFT_BodyBodyGyroscope_JerkMag-meanFreq()
*	angle(Time_Body_Accelerometer_Mean,gravity)
*	angle(Time_Body_Accelerometer_JerkMean),gravityMean)
*	angle(Time_Body_Gyroscope_Mean,gravityMean)
*	angle(Time_Body_Gyroscope_JerkMean,gravityMean)
*	angle(X,gravityMean)
*	angle(Y,gravityMean)
*	angle(Z,gravityMean)
*	Activity
*	Subject
