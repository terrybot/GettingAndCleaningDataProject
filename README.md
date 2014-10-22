Script to summarize selected variables in *UCI Human Activity Recognition using Smartphones* dataset
========================================================

The UCI dataset contains observations measuring various accelerometer metrics for 30 subjects using a Galaxy Smartphone.  Each observeration captures the subject (id), activity (Walking, sitting, etc), and 561 accelerometer metrics.  The UCI set is divided into a training and a test set and is described at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

In summary, run\_analysis.R:

1. Reads the test and training data from the UCI dataset, along with supplemental files
2. Selects only those features that are capture mean or std deviation of a given measurement.  Those features are identified by having the
string *mean* or *std* in the feature name.
3. Summarizes the mean of the captured features by subject and activity.
4. Writes 


run\_analysis.R performs the following functions:

1. Read supplemental datasets:
    1. activity\_labels.txt - a text file mapping activity id to a string description of the activity name, i.e. "Walking"
    2. features.txt - a text file mapping each of the 561 feature id's to a feature label, i.e. "tBodyAcc-mean()-X"
2. Identify the features that are of interest by grep'ing for features in feature.txt containing *mean* or *std*
3. Read the test datasets:
    1. ./test/subject\_test.txt - contains an ordered column vector of the subject id's for each observation in x\_test.txt
    2. ./test/y\_test.txt - contains an ordered column vector of the activity id for each observation in x\_test.txt
    3. ./test/x\_test.txt - contains ordered observations, with each observatio containing 561 features.
4. Extract the mean & std features from x\_test.txt, creating a new frame of observation data, x\_test\_mini.
5. Append subject\_id and activity\_id to the observation data
5. It is important to understand that the observations in all 3 files are in the same order and columns may be safely appended, as we do in the script.
6. Repeat steps 3 - 5 for the training data in the .\train folder.
7. Concatenate the test and training data
8. Set the accelerometer measurement variables in the combined data to friendly names instead of the default R names (V1, V2, etc).  We will use the feature labels that were read, but we must first make them compatible with R and more descriptive of their new meaning:
    1. Remove parentheses 
    2. Replace any dashes with underscores.
    3. Prefix with the string "MEAN_" to better distinguish the summarized variable from the original variable.
9. Group by subject and activity and calculate the mean for each measurement.
10. Write the tidy dataset to the same directory as the input data:
    1. har\_limited\_tidy.txt - a pipe-delimited txt file of the summarized data  - as described in the accompanying codebook.



