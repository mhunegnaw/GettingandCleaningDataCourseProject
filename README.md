GettingandCleaningDataCourseProject
===================================




> http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

> Here are the data for the project: 

> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

> You should create one R script called run_analysis.R that does the following. 
> Merges the training and the test sets to create one data set.
> Extracts only the measurements on the mean and standard deviation for each measurement. 
> Uses descriptive activity names to name the activities in the data set
> Appropriately labels the data set with descriptive variable names. 
> Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## How to run the Project

> Running the script:

> 1. Clone this repository;
> 2. Change current directory to the UCI HAR Dataset folder;
> 3. Open and Run the R script `run_analysis.r`;
> 5. The tidy dataset should get created in the current directory: Validate the directory and verify if the txt`` file, called `tidy-UCI-HAR-dataset-AVG.txt`` was created.

> > NOTE: The `run_analysis.R` script is commented to indicate which parts of the code are responsible for which transformations. See CodeBook.md for additional information on resulting data sets.

## Outputs produced

> * Tidy dataset file `tidy-UCI-HAR-dataset-AVG.txt` 
> * Tidy dataset file `tidy-UCI-HAR-dataset.txt` 
> * Codebook file `codebook.md` (Markdown)
