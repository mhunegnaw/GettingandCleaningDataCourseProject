##Getting and Cleaning Data Course Project Codebook

This codebook describes  the data sources,  variables, and any changes or work that was performed to clean the data. Also describes how to implement the steps mycode.R.



## Data source

This dataset is derived from the Human Activity Recognition Using Smartphones Data Set which was originally made available. 
* data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Attribute information
 
For each record in the dataset it is provided: 
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.



## Original variables

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

•	mean(): Mean value
•	std(): Standard deviation
•	mad(): Median absolute deviation 
•	max(): Largest value in array
•	min(): Smallest value in array
•	sma(): Signal magnitude area
•	energy(): Energy measure. Sum of the squares divided by the number of values. 
•	iqr(): Interquartile range 
•	entropy(): Signal entropy
•	arCoeff(): Autorregresion coefficients with Burg order equal to 4
•	correlation(): correlation coefficient between two signals
•	maxInds(): index of the frequency component with largest magnitude
•	meanFreq(): Weighted average of the frequency components to obtain a mean frequency
•	skewness(): skewness of the frequency domain signal 
•	kurtosis(): kurtosis of the frequency domain signal 
•	bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
•	angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

1.	gravityMean
2.	tBodyAccMean
3.	tBodyAccJerkMean
4.	tBodyGyroMean
5.	tBodyGyroJerkMean

## Transformation details

There are 5 parts:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## How `run_analysis.R` implements the above steps:

* Checks if the file exists, otherwise it downloads;
* Checks if the file has already been extracted to the directory;
* Load both test and train data;
* Load the features and activity labels;
* Extract the mean and standard deviation column names and data;
* Process the data;
* Merge and creates data set: 
* The result is saved as ./tidy-UCI-HAR-dataset-AVG.txt, a 180x68 data table (181 with column name), where as before, the first column contains subject IDs, the second column contains activity names (see below), and then the averages for each of the 66 attributes are in columns 3...68. There are 30 subjects and 6 activities, thus 180 rows in this data set with averages.

## Columns for the tidy set of data

**Subject**: ID indicating the subject from whom data was collected 
**Activity**: Activity being performed 
tBodyAcc-mean-X  
tBodyAcc-mean-Y 
tBodyAcc-mean-Z 
tBodyAcc-std-X 
tBodyAcc-std-Y
tBodyAcc-std-Z 
tGravityAcc-mean-X 
tGravityAcc-mean-Y
tGravityAcc-mean-Z
tGravityAcc-std-X
tGravityAcc-std-Y
tGravityAcc-std-Z
tBodyAccJerk-mean-X 
tBodyAccJerk-mean-Y 
tBodyAccJerk-mean-Z
tBodyAccJerk-std-X 
tBodyAccJerk-std-Y
tBodyAccJerk-std-Z
tBodyGyro-mean-X 
tBodyGyro-mean-Y 
tBodyGyro-mean-Z
tBodyGyro-std-X 
tBodyGyro-std-Y
tBodyGyro-std-Z 
tBodyGyroJerk-mean-X 
tBodyGyroJerk-mean-Y 
tBodyGyroJerk-mean-Z 
tBodyGyroJerk-std-X
tBodyGyroJerk-std-Y 
tBodyGyroJerk-std-Z
tBodyAccMag-mean 
tBodyAccMag-std
tGravityAccMag-mean 
tGravityAccMag-std 
tBodyAccJerkMag-mean 
tBodyAccJerkMag-std 
tBodyGyroMag-mean 
tBodyGyroMag-std
tBodyGyroJerkMag-mean 
tBodyGyroJerkMag-std 
fBodyAcc-mean-X 
fBodyAcc-mean-Y
fBodyAcc-mean-Z 
fBodyAcc-std-X 
fBodyAcc-std-Y 
fBodyAcc-std-Z 
fBodyAccJerk-mean-X 
fBodyAccJerk-mean-Y 
fBodyAccJerk-mean-Z 
fBodyAccJerk-std-X 
fBodyAccJerk-std-Y 
fBodyAccJerk-std-Z 
fBodyGyro-mean-X 
fBodyGyro-mean-Y 
fBodyGyro-mean-Z 
fBodyGyro-std-X 
fBodyGyro-std-Y
fBodyGyro-std-Z 
fBodyAccMag-mean 
fBodyAccMag-std 
fBodyBodyAccJerkMag-mean
fBodyBodyAccJerkMag-std 
fBodyBodyGyroMag-mean 
fBodyBodyGyroMag-std 
fBodyBodyGyroJerkMag-mean 
fBodyBodyGyroJerkMag-std
