# Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset. 

A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: [Web Link]

An updated version of this dataset can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). It includes labels of postural transitions between activities and also the full raw inertial signals instead of the ones pre-processed into windows.

# Source
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1. Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2. CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws

# Variables
|      |                                     | 
|------|-------------------------------------| 
| "1"  | "subject"                           | 
| "2"  | "activity"                          | 
| "3"  | "tBodyAccmeanX"                     | 
| "4"  | "tBodyAccmeanY"                     | 
| "5"  | "tBodyAccmeanZ"                     | 
| "6"  | "tGravityAccmeanX"                  | 
| "7"  | "tGravityAccmeanY"                  | 
| "8"  | "tGravityAccmeanZ"                  | 
| "9"  | "tBodyAccJerkmeanX"                 | 
| "10" | "tBodyAccJerkmeanY"                 | 
| "11" | "tBodyAccJerkmeanZ"                 | 
| "12" | "tBodyGyromeanX"                    | 
| "13" | "tBodyGyromeanY"                    | 
| "14" | "tBodyGyromeanZ"                    | 
| "15" | "tBodyGyroJerkmeanX"                | 
| "16" | "tBodyGyroJerkmeanY"                | 
| "17" | "tBodyGyroJerkmeanZ"                | 
| "18" | "tBodyAccMagmean"                   | 
| "19" | "tGravityAccMagmean"                | 
| "20" | "tBodyAccJerkMagmean"               | 
| "21" | "tBodyGyroMagmean"                  | 
| "22" | "tBodyGyroJerkMagmean"              | 
| "23" | "fBodyAccmeanX"                     | 
| "24" | "fBodyAccmeanY"                     | 
| "25" | "fBodyAccmeanZ"                     | 
| "26" | "fBodyAccmeanFreqX"                 | 
| "27" | "fBodyAccmeanFreqY"                 | 
| "28" | "fBodyAccmeanFreqZ"                 | 
| "29" | "fBodyAccJerkmeanX"                 | 
| "30" | "fBodyAccJerkmeanY"                 | 
| "31" | "fBodyAccJerkmeanZ"                 | 
| "32" | "fBodyAccJerkmeanFreqX"             | 
| "33" | "fBodyAccJerkmeanFreqY"             | 
| "34" | "fBodyAccJerkmeanFreqZ"             | 
| "35" | "fBodyGyromeanX"                    | 
| "36" | "fBodyGyromeanY"                    | 
| "37" | "fBodyGyromeanZ"                    | 
| "38" | "fBodyGyromeanFreqX"                | 
| "39" | "fBodyGyromeanFreqY"                | 
| "40" | "fBodyGyromeanFreqZ"                | 
| "41" | "fBodyAccMagmean"                   | 
| "42" | "fBodyAccMagmeanFreq"               | 
| "43" | "fBodyBodyAccJerkMagmean"           | 
| "44" | "fBodyBodyAccJerkMagmeanFreq"       | 
| "45" | "fBodyBodyGyroMagmean"              | 
| "46" | "fBodyBodyGyroMagmeanFreq"          | 
| "47" | "fBodyBodyGyroJerkMagmean"          | 
| "48" | "fBodyBodyGyroJerkMagmeanFreq"      | 
| "49" | "angletBodyAccMeangravity"          | 
| "50" | "angletBodyAccJerkMeangravityMean"  | 
| "51" | "angletBodyGyroMeangravityMean"     | 
| "52" | "angletBodyGyroJerkMeangravityMean" | 
| "53" | "angleXgravityMean"                 | 
| "54" | "angleYgravityMean"                 | 
| "55" | "angleZgravityMean"                 | 
| "56" | "tBodyAccstdX"                      | 
| "57" | "tBodyAccstdY"                      | 
| "58" | "tBodyAccstdZ"                      | 
| "59" | "tGravityAccstdX"                   | 
| "60" | "tGravityAccstdY"                   | 
| "61" | "tGravityAccstdZ"                   | 
| "62" | "tBodyAccJerkstdX"                  | 
| "63" | "tBodyAccJerkstdY"                  | 
| "64" | "tBodyAccJerkstdZ"                  | 
| "65" | "tBodyGyrostdX"                     | 
| "66" | "tBodyGyrostdY"                     | 
| "67" | "tBodyGyrostdZ"                     | 
| "68" | "tBodyGyroJerkstdX"                 | 
| "69" | "tBodyGyroJerkstdY"                 | 
| "70" | "tBodyGyroJerkstdZ"                 | 
| "71" | "tBodyAccMagstd"                    | 
| "72" | "tGravityAccMagstd"                 | 
| "73" | "tBodyAccJerkMagstd"                | 
| "74" | "tBodyGyroMagstd"                   | 
| "75" | "tBodyGyroJerkMagstd"               | 
| "76" | "fBodyAccstdX"                      | 
| "77" | "fBodyAccstdY"                      | 
| "78" | "fBodyAccstdZ"                      | 
| "79" | "fBodyAccJerkstdX"                  | 
| "80" | "fBodyAccJerkstdY"                  | 
| "81" | "fBodyAccJerkstdZ"                  | 
| "82" | "fBodyGyrostdX"                     | 
| "83" | "fBodyGyrostdY"                     | 
| "84" | "fBodyGyrostdZ"                     | 
| "85" | "fBodyAccMagstd"                    | 
| "86" | "fBodyBodyAccJerkMagstd"            | 
| "87" | "fBodyBodyGyroMagstd"               | 
| "88" | "fBodyBodyGyroJerkMagstd"           | 

# Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


## Activities
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

## Subjects: between 1 & 30
- 1
- 2
- ...
- 30