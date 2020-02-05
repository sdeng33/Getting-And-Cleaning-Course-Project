---
output: github_document
---

# Code Book

This code book summarizes the fields in `TIDYDS.txt`

## Identifiers

- `Subject` - The IDs of the subjects who performed the activity and ranges from 1 to 30.
- `Activity` - The name of the activity performed when the measurement were taken (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

## Measurements

- time_domainBodyAccelerationMean()-X
- time_domainBodyAccelerationMean()-Y
- time_domainBodyAccelerationMean()-Z
- time_domainBodyAccelerationStandard_Deviation()-X
- time_domainBodyAccelerationStandard_Deviation()-Y
- time_domainBodyAccelerationStandard_Deviation()-Z
- time_domainGravityAccelerationMean()-X
- time_domainGravityAccelerationMean()-Y
- time_domainGravityAccelerationMean()-Z
- time_domainGravityAccelerationStandard_Deviation()-X
- time_domainGravityAccelerationStandard_Deviation()-Y
- time_domainGravityAccelerationStandard_Deviation()-Z
- time_domainBodyAccelerationJerkMean()-X
- time_domainBodyAccelerationJerkMean()-Y
- time_domainBodyAccelerationJerkMean()-Z
- time_domainBodyAccelerationJerkStandard_Deviation()-X
- time_domainBodyAccelerationJerkStandard_Deviation()-Y
- time_domainBodyAccelerationJerkStandard_Deviation()-Z
- time_domainBodyGyroscopeMean()-X
- time_domainBodyGyroscopeMean()-Y
- time_domainBodyGyroscopeMean()-Z
- time_domainBodyGyroscopeStandard_Deviation()-X
- time_domainBodyGyroscopeStandard_Deviation()-Y
- time_domainBodyGyroscopeStandard_Deviation()-Z
- time_domainBodyGyroscopeJerkMean()-X
- time_domainBodyGyroscopeJerkMean()-Y
- time_domainBodyGyroscopeJerkMean()-Z
- time_domainBodyGyroscopeJerkStandard_Deviation()-X
- time_domainBodyGyroscopeJerkStandard_Deviation()-Y
- time_domainBodyGyroscopeJerkStandard_Deviation()-Z
- time_domainBodyAccelerationMagnitudeMean()
- time_domainBodyAccelerationMagnitudeStandard_Deviation()
- time_domainGravityAccelerationMagnitudeMean()
- time_domainGravityAccelerationMagnitudeStandard_Deviation()
- time_domainBodyAccelerationJerkMagnitudeMean()
- time_domainBodyAccelerationJerkMagnitudeStandard_Deviation()
- time_domainBodyGyroscopeMagnitudeMean()
- time_domainBodyGyroscopeMagnitudeStandard_Deviation()
- time_domainBodyGyroscopeJerkMagnitudeMean()
- time_domainBodyGyroscopeJerkMagnitudeStandard_Deviation()
- frequency_domainBodyAccelerationMean()-X
- frequency_domainBodyAccelerationMean()-Y
- frequency_domainBodyAccelerationMean()-Z
- frequency_domainBodyAccelerationStandard_Deviation()-X
- frequency_domainBodyAccelerationStandard_Deviation()-Y
- frequency_domainBodyAccelerationStandard_Deviation()-Z
- frequency_domainBodyAccelerationMeanFrequency()-X
- frequency_domainBodyAccelerationMeanFrequency()-Y
- frequency_domainBodyAccelerationMeanFrequency()-Z
- frequency_domainBodyAccelerationJerkMean()-X
- frequency_domainBodyAccelerationJerkMean()-Y
- frequency_domainBodyAccelerationJerkMean()-Z
- frequency_domainBodyAccelerationJerkStandard_Deviation()-X
- frequency_domainBodyAccelerationJerkStandard_Deviation()-Y
- frequency_domainBodyAccelerationJerkStandard_Deviation()-Z
- frequency_domainBodyAccelerationJerkMeanFrequency()-X
- frequency_domainBodyAccelerationJerkMeanFrequency()-Y
- frequency_domainBodyAccelerationJerkMeanFrequency()-Z
- frequency_domainBodyGyroscopeMean()-X
- frequency_domainBodyGyroscopeMean()-Y
- frequency_domainBodyGyroscopeMean()-Z
- frequency_domainBodyGyroscopeStandard_Deviation()-X
- frequency_domainBodyGyroscopeStandard_Deviation()-Y
- frequency_domainBodyGyroscopeStandard_Deviation()-Z
- frequency_domainBodyGyroscopeMeanFrequency()-X
- frequency_domainBodyGyroscopeMeanFrequency()-Y
- frequency_domainBodyGyroscopeMeanFrequency()-Z
- frequency_domainBodyAccelerationMagnitudeMean()
- frequency_domainBodyAccelerationMagnitudeStandard_Deviation()
- frequency_domainBodyAccelerationMagnitudeMeanFrequency()
- frequency_domainBodyAccelerationJerkMagnitudeMean()
- frequency_domainBodyAccelerationJerkMagnitudeStandard_Deviation()
- frequency_domainBodyAccelerationJerkMagnitudeMeanFrequency()
- frequency_domainBodyGyroscopeMagnitudeMean()
- frequency_domainBodyGyroscopeMagnitudeStandard_Deviation()
- frequency_domainBodyGyroscopeMagnitudeMeanFrequency()
- frequency_domainBodyGyroscopeJerkMagnitudeMean()
- frequency_domainBodyGyroscopeJerkMagnitudeStandard_Deviation()
- frequency_domainBodyGyroscopeJerkMagnitudeMeanFrequency()
- Angle(time_domainBodyAccelerationMean,Gravity)
- Angle(time_domainBodyAccelerationJerkMean),GravityMean)
- Angle(time_domainBodyGyroscopeMean,GravityMean)
- Angle(time_domainBodyGyroscopeJerkMean,GravityMean)
- Angle(X,GravityMean)
- Angle(Y,GravityMean)
- Angle(Z,GravityMean)

The time_domainBodyAcceleration and time_domainGravityAcceleration terms are in units of g's, or more explicitly, approximately 9.80665 m/s^2.
The time_domainBodyAccelerationJerk terms are in units of g's/s or more explicitly, approximately 9.80665 m/s^3.
The time_domainBodyGyroscope terms are in units of radians/s.
The time_domainBodyGyroscopeJerk terms are in units of radians/s^2.

The frequency_domainBodyAcceleration terms are in units of m/s.
The frequency_domainBodyAccelerationMeanFrequency terms are in units of Hz.
The frequency_domainBodyAccelerationJerk terms are in units of g's, or more explicitly, approximately 9.80665 m/s^2. .
The frequency_domainBodyAccelerationJerkMeanFrequency terms are in units of Hz.
The frequency_domainBodyAccelerationMagnitudeMeanFrequency terms are also in units of Hz.
The frequency_domainBodyGyroscope terms are in units of radians.
The frequency_domainBodyGyroscopeJerk terms are units of radians/s.
The frequency_domainBodyGyroscopeJerkMagnitudeMeanFrequency terms are in units of Hz.

All Angle terms are in units of radians.

## Summary Choices Information

From the one data set of Step 3 of the Instruction list section of the `README.md`, an intermediate data set was created that contains only the mean and standard deviation of each measurement.  The activity id column was replaced by the activity label.  Variable names in the intermediate data set were then expanded and cleaned up to render clarity.  The average of each variable for each subject and activity were cleaned to create the independent tidy data set
`TIDYDS.txt`.