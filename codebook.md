Codebook - summarized variables from *UCI Human Activity Recognition using Smartphones* dataset
========================================================
This codebook describes har\_limited\_tidy.txt, a file summarizing selected variables from the observations in the *UCI Human Activity Recognition using Smartphones* dataset

The UCI dataset contains observations measuring various accelerometer metrics for 30 subjects using a Galaxy Smartphone.  Each observeration captures the subject (id), activity (Walking, sitting, etc), and 561 accelerometer metrics.  The UCI set is divided into a training and a test set and is described at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The har\_limited\_tidy.txt file combines the UCI training and test data and provides the means of 79 variables from the original dataset that are related to mean or standard deviation measurements.  The means are calculated at a grouping of subject & activity.  

There are 30 subjects, each with with 6 observations, so the dataset contains a total of 180 observations.  Each observation is for a unique subject and activity.

The har\_limited\_tidy.txt is a pipe-delimited file with a header row, containing the variables in the table below (definition of all variables is in the UCI documentation in the link above).  It may be read with the following R code snippet: 
```
tidy_data <- read.table("har_limited_tidy.txt", sep="|", header=TRUE) 
```


Id      |	Variable	|	Description		
 ---	|	 -------	|	 -----------		
1.	|	subject\_id	|	 - id of the subject for this grouping		
2.	|	activity	|	 - the subject's activity for this grouping : LAYING, SITTING, STANDING, WALKING, WALKING\_DOWNSTAIRS, WALKING\_UPSTAIRS		
3.	|	activity\_id	|	 - id of the activity		
4.	|	MEAN\_tBodyAcc\_mean\_X	|	Original UCI variable --> tBodyAcc-mean()-X		
5.	|	MEAN\_tBodyAcc\_mean\_Y	|	Original UCI variable --> tBodyAcc-mean()-Y		
6.	|	MEAN\_tBodyAcc\_mean\_Z	|	Original UCI variable --> tBodyAcc-mean()-Z		
7.	|	MEAN\_tBodyAcc\_std\_X	|	Original UCI variable --> tBodyAcc-std()-X		
8.	|	MEAN\_tBodyAcc\_std\_Y	|	Original UCI variable --> tBodyAcc-std()-Y		
9.	|	MEAN\_tBodyAcc\_std\_Z	|	Original UCI variable --> tBodyAcc-std()-Z		
10.	|	MEAN\_tGravityAcc\_mean\_X	|	Original UCI variable --> tGravityAcc-mean()-X		
11.	|	MEAN\_tGravityAcc\_mean\_Y	|	Original UCI variable --> tGravityAcc-mean()-Y		
12.	|	MEAN\_tGravityAcc\_mean\_Z	|	Original UCI variable --> tGravityAcc-mean()-Z		
13.	|	MEAN\_tGravityAcc\_std\_X	|	Original UCI variable --> tGravityAcc-std()-X		
14.	|	MEAN\_tGravityAcc\_std\_Y	|	Original UCI variable --> tGravityAcc-std()-Y		
15.	|	MEAN\_tGravityAcc\_std\_Z	|	Original UCI variable --> tGravityAcc-std()-Z		
16.	|	MEAN\_tBodyAccJerk\_mean\_X	|	Original UCI variable --> tBodyAccJerk-mean()-X		
17.	|	MEAN\_tBodyAccJerk\_mean\_Y	|	Original UCI variable --> tBodyAccJerk-mean()-Y		
18.	|	MEAN\_tBodyAccJerk\_mean\_Z	|	Original UCI variable --> tBodyAccJerk-mean()-Z		
19.	|	MEAN\_tBodyAccJerk\_std\_X	|	Original UCI variable --> tBodyAccJerk-std()-X		
20.	|	MEAN\_tBodyAccJerk\_std\_Y	|	Original UCI variable --> tBodyAccJerk-std()-Y		
21.	|	MEAN\_tBodyAccJerk\_std\_Z	|	Original UCI variable --> tBodyAccJerk-std()-Z		
22.	|	MEAN\_tBodyGyro\_mean\_X	|	Original UCI variable --> tBodyGyro-mean()-X		
23.	|	MEAN\_tBodyGyro\_mean\_Y	|	Original UCI variable --> tBodyGyro-mean()-Y		
24.	|	MEAN\_tBodyGyro\_mean\_Z	|	Original UCI variable --> tBodyGyro-mean()-Z		
25.	|	MEAN\_tBodyGyro\_std\_X	|	Original UCI variable --> tBodyGyro-std()-X		
26.	|	MEAN\_tBodyGyro\_std\_Y	|	Original UCI variable --> tBodyGyro-std()-Y		
27.	|	MEAN\_tBodyGyro\_std\_Z	|	Original UCI variable --> tBodyGyro-std()-Z		
28.	|	MEAN\_tBodyGyroJerk\_mean\_X	|	Original UCI variable --> tBodyGyroJerk-mean()-X		
29.	|	MEAN\_tBodyGyroJerk\_mean\_Y	|	Original UCI variable --> tBodyGyroJerk-mean()-Y		
30.	|	MEAN\_tBodyGyroJerk\_mean\_Z	|	Original UCI variable --> tBodyGyroJerk-mean()-Z		
31.	|	MEAN\_tBodyGyroJerk\_std\_X	|	Original UCI variable --> tBodyGyroJerk-std()-X		
32.	|	MEAN\_tBodyGyroJerk\_std\_Y	|	Original UCI variable --> tBodyGyroJerk-std()-Y		
33.	|	MEAN\_tBodyGyroJerk\_std\_Z	|	Original UCI variable --> tBodyGyroJerk-std()-Z		
34.	|	MEAN\_tBodyAccMag\_mean	|	Original UCI variable --> tBodyAccMag-mean()		
35.	|	MEAN\_tBodyAccMag\_std	|	Original UCI variable --> tBodyAccMag-std()		
36.	|	MEAN\_tGravityAccMag\_mean	|	Original UCI variable --> tGravityAccMag-mean()		
37.	|	MEAN\_tGravityAccMag\_std	|	Original UCI variable --> tGravityAccMag-std()		
38.	|	MEAN\_tBodyAccJerkMag\_mean	|	Original UCI variable --> tBodyAccJerkMag-mean()		
39.	|	MEAN\_tBodyAccJerkMag\_std	|	Original UCI variable --> tBodyAccJerkMag-std()		
40.	|	MEAN\_tBodyGyroMag\_mean	|	Original UCI variable --> tBodyGyroMag-mean()		
41.	|	MEAN\_tBodyGyroMag\_std	|	Original UCI variable --> tBodyGyroMag-std()		
42.	|	MEAN\_tBodyGyroJerkMag\_mean	|	Original UCI variable --> tBodyGyroJerkMag-mean()		
43.	|	MEAN\_tBodyGyroJerkMag\_std	|	Original UCI variable --> tBodyGyroJerkMag-std()		
44.	|	MEAN\_fBodyAcc\_mean\_X	|	Original UCI variable --> fBodyAcc-mean()-X		
45.	|	MEAN\_fBodyAcc\_mean\_Y	|	Original UCI variable --> fBodyAcc-mean()-Y		
46.	|	MEAN\_fBodyAcc\_mean\_Z	|	Original UCI variable --> fBodyAcc-mean()-Z		
47.	|	MEAN\_fBodyAcc\_std\_X	|	Original UCI variable --> fBodyAcc-std()-X		
48.	|	MEAN\_fBodyAcc\_std\_Y	|	Original UCI variable --> fBodyAcc-std()-Y		
49.	|	MEAN\_fBodyAcc\_std\_Z	|	Original UCI variable --> fBodyAcc-std()-Z		
50.	|	MEAN\_fBodyAcc\_meanFreq\_X	|	Original UCI variable --> fBodyAcc-meanFreq()-X		
51.	|	MEAN\_fBodyAcc\_meanFreq\_Y	|	Original UCI variable --> fBodyAcc-meanFreq()-Y		
52.	|	MEAN\_fBodyAcc\_meanFreq\_Z	|	Original UCI variable --> fBodyAcc-meanFreq()-Z		
53.	|	MEAN\_fBodyAccJerk\_mean\_X	|	Original UCI variable --> fBodyAccJerk-mean()-X		
54.	|	MEAN\_fBodyAccJerk\_mean\_Y	|	Original UCI variable --> fBodyAccJerk-mean()-Y		
55.	|	MEAN\_fBodyAccJerk\_mean\_Z	|	Original UCI variable --> fBodyAccJerk-mean()-Z		
56.	|	MEAN\_fBodyAccJerk\_std\_X	|	Original UCI variable --> fBodyAccJerk-std()-X		
57.	|	MEAN\_fBodyAccJerk\_std\_Y	|	Original UCI variable --> fBodyAccJerk-std()-Y		
58.	|	MEAN\_fBodyAccJerk\_std\_Z	|	Original UCI variable --> fBodyAccJerk-std()-Z		
59.	|	MEAN\_fBodyAccJerk\_meanFreq\_X	|	Original UCI variable --> fBodyAccJerk-meanFreq()-X		
60.	|	MEAN\_fBodyAccJerk\_meanFreq\_Y	|	Original UCI variable --> fBodyAccJerk-meanFreq()-Y		
61.	|	MEAN\_fBodyAccJerk\_meanFreq\_Z	|	Original UCI variable --> fBodyAccJerk-meanFreq()-Z		
62.	|	MEAN\_fBodyGyro\_mean\_X	|	Original UCI variable --> fBodyGyro-mean()-X		
63.	|	MEAN\_fBodyGyro\_mean\_Y	|	Original UCI variable --> fBodyGyro-mean()-Y		
64.	|	MEAN\_fBodyGyro\_mean\_Z	|	Original UCI variable --> fBodyGyro-mean()-Z		
65.	|	MEAN\_fBodyGyro\_std\_X	|	Original UCI variable --> fBodyGyro-std()-X		
66.	|	MEAN\_fBodyGyro\_std\_Y	|	Original UCI variable --> fBodyGyro-std()-Y		
67.	|	MEAN\_fBodyGyro\_std\_Z	|	Original UCI variable --> fBodyGyro-std()-Z		
68.	|	MEAN\_fBodyGyro\_meanFreq\_X	|	Original UCI variable --> fBodyGyro-meanFreq()-X		
69.	|	MEAN\_fBodyGyro\_meanFreq\_Y	|	Original UCI variable --> fBodyGyro-meanFreq()-Y		
70.	|	MEAN\_fBodyGyro\_meanFreq\_Z	|	Original UCI variable --> fBodyGyro-meanFreq()-Z		
71.	|	MEAN\_fBodyAccMag\_mean	|	Original UCI variable --> fBodyAccMag-mean()		
72.	|	MEAN\_fBodyAccMag\_std	|	Original UCI variable --> fBodyAccMag-std()		
73.	|	MEAN\_fBodyAccMag\_meanFreq	|	Original UCI variable --> fBodyAccMag-meanFreq()		
74.	|	MEAN\_fBodyBodyAccJerkMag\_mean	|	Original UCI variable --> fBodyBodyAccJerkMag-mean()		
75.	|	MEAN\_fBodyBodyAccJerkMag\_std	|	Original UCI variable --> fBodyBodyAccJerkMag-std()		
76.	|	MEAN\_fBodyBodyAccJerkMag\_meanFreq	|	Original UCI variable --> fBodyBodyAccJerkMag-meanFreq()		
77.	|	MEAN\_fBodyBodyGyroMag\_mean	|	Original UCI variable --> fBodyBodyGyroMag-mean()		
78.	|	MEAN\_fBodyBodyGyroMag\_std	|	Original UCI variable --> fBodyBodyGyroMag-std()		
79.	|	MEAN\_fBodyBodyGyroMag\_meanFreq	|	Original UCI variable --> fBodyBodyGyroMag-meanFreq()		
80.	|	MEAN\_fBodyBodyGyroJerkMag\_mean	|	Original UCI variable --> fBodyBodyGyroJerkMag-mean()		
81.	|	MEAN\_fBodyBodyGyroJerkMag\_std	|	Original UCI variable --> fBodyBodyGyroJerkMag-std()		
82.	|	MEAN\_fBodyBodyGyroJerkMag\_meanFreq	|	Original UCI variable --> fBodyBodyGyroJerkMag-meanFreq()		
