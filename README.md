# Getting & Cleaning Data
Final project of the course (Getting and Cleaning Data)[https://www.coursera.org/learn/data-cleaning] located at coursera.

## What is inside?
- A readme
- A tidy dataset
- A codebook
- The script to tidy the initial data

## The script: run_analysis.R
The only script of this project load a large amount of data separetly, tidy them to have just one dataset, clear all duplicated variables, set a better descriptive of the header of our dataset and his activities and write down this data set on a file called tidydata.csv + all the cleaning variables features.csv.

Here is also removed all special characters on variables to have a better name. using of function **gsub** to do it.

Data is grouped by subject using group_by(dplyr) and activities to apply summarization on each measurement.

Here we use dplyr package to make advanced manipulation of data with tibble:
- select
- contains
- mutate
- group_by
- summarise_each

## Output: TXT
- write.csv(data, file = "tidydata.txt", row.names=FALSE): to write the final tidy data set on a .txt file
- write.csv(colnames(data), file = "features.txt"): output all cleaning variables

## Notes
- Specify the folder of the unziped data in the script: **folder**
- **folder** will be used as the working directory and at the end of the script the initial working directory will be reset.
- The final tidy data has **180 rows**