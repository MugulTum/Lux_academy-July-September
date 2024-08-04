# Weather Data Analysis 

## Overview
This project focuses on loading a weather dataset and answering several specific questions to derive insights from the data. The tasks performed include filtering, counting, checking for NULL values, renaming columns, and calculating statistical measures.

## Questions Answered
1. **Find all records where the weather was exactly clear:** 1326 records found.
2. **Find the number of times the wind speed was exactly 4 km/hr:** 474 times.
3. **Check if there are any NULL values present in the dataset:** No NULL values found.
4. **Rename the column "Weather" to "Weather_Condition."** I used the rename pandas method to rename the 'Weather' column to 'Weather_Condition'
5. **Calculate the mean visibility of the dataset.** For this problem, I used the python code
   ```{python}
   mean_visibility = weather_df['Visibility_km'].mean()
   ```
   and I got a mean of 27.664446721311478.
  
7. **Find the number of records where the wind speed is greater than 24 km/hr and visibility is equal to 25 km.** 308 records
8. **Calculate the mean value of each column for each weather condition.** For this, I used the describe() function in python to get the mean of all the features with numerical values. 
9. **Find all instances where the weather is clear and the relative humidity is greater than 50, or visibility is above 40.** 1070 records
10. **Find the number of weather conditions that include snow.** 390 records. 
