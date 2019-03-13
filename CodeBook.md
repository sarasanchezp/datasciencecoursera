# CodeBook

The dataset has 82 columns and 180 rows with no missing values.

## Variables

* `subject_id` : ID of the subject being evaluated, values in range [1,30].
* `activity_name` : name of the activity evaluated, values in range [1,6].
* `activity_id`: ID associated to the `activity_name`
  1. LAYING
  2. SITTING
  3. STANDING
  4. WALKING
  5. WALKING_DOWNSTAIRS
  6. WALKING_UPSTAIRS

* Averaged measurements for each combination of subject and activity:
  * `TimeDomain_BodyAccelerometer_Mean_X`
  * `TimeDomain_BodyAccelerometer_Mean_Y_`
  * `TimeDomain_BodyAccelerometer_Mean_Z_`
  * `TimeDomain_BodyAccelerometer_StandardDeviation_X_`
  * `TimeDomain_BodyAccelerometer_StandardDeviation_Y_`
  * `TimeDomain_BodyAccelerometer_StandardDeviation_Z_`
  * `TimeDomain_GravityAccelerometer_Mean_X_`
  * `TimeDomain_GravityAccelerometer_Mean_Y_`
  * `TimeDomain_GravityAccelerometer_Mean_Z_`
  * `TimeDomain_GravityAccelerometer_StandardDeviation_X_`
  * `TimeDomain_GravityAccelerometer_StandardDeviation_Y_`
  * `TimeDomain_GravityAccelerometer_StandardDeviation_Z_`
  * `TimeDomain_BodyAccelerometer_JerkMean_X_`
  * `TimeDomain_BodyAccelerometer_JerkMean_Y_`
  * `TimeDomain_BodyAccelerometer_JerkMean_Z_`
  * `TimeDomain_BodyAccelerometer_JerkStandardDeviation_X_`
  * `TimeDomain_BodyAccelerometer_JerkStandardDeviation_Y_`
  * `TimeDomain_BodyAccelerometer_JerkStandardDeviation_Z_`
  * `TimeDomain_BodyGyroscope_Mean_X_`
  * `TimeDomain_BodyGyroscope_Mean_Y_`
  * `TimeDomain_BodyGyroscope_Mean_Z_`
  * `TimeDomain_BodyGyroscope_StandardDeviation_X_`
  * `TimeDomain_BodyGyroscope_StandardDeviation_Y_`
  * `TimeDomain_BodyGyroscope_StandardDeviation_Z_`
  * `TimeDomain_BodyGyroscope_JerkMean_X_`
  * `TimeDomain_BodyGyroscope_JerkMean_Y_`
  * `TimeDomain_BodyGyroscope_JerkMean_Z_`
  * `TimeDomain_BodyGyroscope_JerkStandardDeviation_X_`
  * `TimeDomain_BodyGyroscope_JerkStandardDeviation_Y_`
  * `TimeDomain_BodyGyroscope_JerkStandardDeviation_Z_`
  * `TimeDomain_BodyAccelerometer_Magnitude_Mean_`
  * `TimeDomain_BodyAccelerometer_Magnitude_StandardDeviation_`
  * `TimeDomain_GravityAccelerometer_Magnitude_Mean_`
  * `TimeDomain_GravityAccelerometer_Magnitude_StandardDeviation_`
  * `TimeDomain_BodyAccelerometer_JerkMagnitude_Mean_`
  * `TimeDomain_BodyAccelerometer_JerkMagnitude_StandardDeviation_`
  * `TimeDomain_BodyGyroscope_Magnitude_Mean_`
  * `TimeDomain_BodyGyroscope_Magnitude_StandardDeviation_`
  * `TimeDomain_BodyGyroscope_JerkMagnitude_Mean_`
  * `TimeDomain_BodyGyroscope_JerkMagnitude_StandardDeviation_`
  * `FrequencyuencyDomain_BodyAccelerometer_Mean_X_`
  * `FrequencyuencyDomain_BodyAccelerometer_Mean_Y_`
  * `FrequencyuencyDomain_BodyAccelerometer_Mean_Z_`
  * `FrequencyuencyDomain_BodyAccelerometer_StandardDeviation_X_`
  * `FrequencyuencyDomain_BodyAccelerometer_StandardDeviation_Y_`
  * `FrequencyuencyDomain_BodyAccelerometer_StandardDeviation_Z_`
  * `FrequencyuencyDomain_BodyAccelerometer_MeanFrequency_X_`
  * `FrequencyuencyDomain_BodyAccelerometer_MeanFrequency_Y_`
  * `FrequencyuencyDomain_BodyAccelerometer_MeanFrequency_Z_`
  * `FrequencyuencyDomain_BodyAccelerometer_JerkMean_X_`
  * `FrequencyuencyDomain_BodyAccelerometer_JerkMean_Y_`
  * `FrequencyuencyDomain_BodyAccelerometer_JerkMean_Z_`
  * `FrequencyuencyDomain_BodyAccelerometer_JerkStandardDeviation_X_`
  * `FrequencyuencyDomain_BodyAccelerometer_JerkStandardDeviation_Y_`
  * `FrequencyuencyDomain_BodyAccelerometer_JerkStandardDeviation_Z_`
  * `FrequencyuencyDomain_BodyAccelerometer_JerkMeanFrequency_X_`
  * `FrequencyuencyDomain_BodyAccelerometer_JerkMeanFrequency_Y_`
  * `FrequencyuencyDomain_BodyAccelerometer_JerkMeanFrequency_Z_`
  * `FrequencyuencyDomain_BodyGyroscope_Mean_X_`
  * `FrequencyuencyDomain_BodyGyroscope_Mean_Y_`
  * `FrequencyuencyDomain_BodyGyroscope_Mean_Z_`
  * `FrequencyuencyDomain_BodyGyroscope_StandardDeviation_X_`
  * `FrequencyuencyDomain_BodyGyroscope_StandardDeviation_Y_`
  * `FrequencyuencyDomain_BodyGyroscope_StandardDeviation_Z_`
  * `FrequencyuencyDomain_BodyGyroscope_MeanFrequency_X_`
  * `FrequencyuencyDomain_BodyGyroscope_MeanFrequency_Y_`
  * `FrequencyuencyDomain_BodyGyroscope_MeanFrequency_Z_`
  * `FrequencyuencyDomain_BodyAccelerometer_Magnitude_Mean_`
  * `FrequencyuencyDomain_BodyAccelerometer_Magnitude_StandardDeviation_`
  * `FrequencyuencyDomain_BodyAccelerometer_Magnitude_MeanFrequency_`
  * `FrequencyuencyDomain_BodyAccelerometer_JerkMagnitude_Mean_`
  * `FrequencyuencyDomain_BodyAccelerometer_JerkMagnitude_StandardDeviation_`
  * `FrequencyuencyDomain_BodyAccelerometer_JerkMagnitude_MeanFrequency_`
  * `FrequencyuencyDomain_BodyGyroscope_Magnitude_Mean_`
  * `FrequencyuencyDomain_BodyGyroscope_Magnitude_StandardDeviation_`
  * `FrequencyuencyDomain_BodyGyroscope_Magnitude_MeanFrequency_`
  * `FrequencyuencyDomain_BodyGyroscope_JerkMagnitude_Mean_`
  * `FrequencyuencyDomain_BodyGyroscope_JerkMagnitude_StandardDeviation_`
  * `FrequencyuencyDomain_BodyGyroscope_JerkMagnitude_MeanFrequency_`