# Weather Dataset EDA Analysis 
## Overview 
In this project, the goal is to perform Exploratory Data Analysis (EDA) on a weather dataset,
uncovering patterns, insights, and potential anomalies. This analysis will focus on understanding key weather parameters,
identifying trends over time, and providing insights that could be valuable for weather prediction or other practical applications. 

## Data Overview and Cleaning
#### Dataset Characteristics:
The weather dataset has records of weather parameters that include temperature, humidity, wind speed, and visibility.
The dataset has 8,784 observations, each representing a different date and time, with 8 features in total:
    'Date/Time', 'Temp_C', 'Dew Point Temp_C', 'Rel Hum_%', 'Wind Speed_km/h', 'Visibility_km', 'Press_kPa', and 'Weather'.
Each feature is non-null and there are no missing values or duplicated values across the dataset. The data types in the dataset are float and object. 

## Statistical Summary
#### Summary Statistics:

Temperature (Temp_C):
Mean: 8.80°C, Std Dev: 11.69°C
Min: -23.3°C, Max: 33.0°C
Outliers: Extreme cold and hot temperatures indicate possible outliers, particularly below -20°C and above 30°C.

Visibility (Visibility_km):
Mean: 27.66 km, Std Dev: 12.62 km
Min: 0.20 km, Max: 48.30 km
Outliers: Very low visibility values, especially those close to 0.20 km, might indicate extreme weather conditions like fog or heavy precipitation, which are outliers compared to the dataset's general trend.

Pressure (Press_kPa):
Mean: 101.05 kPa, Std Dev: 0.84 kPa
Min: 97.52 kPa, Max: 103.65 kPa
Outliers: Pressure values significantly below the mean, such as those near 97.52 kPa, could indicate unusual atmospheric conditions like low-pressure systems, which are outliers in the context of this data.


Humidity (Rel Hum_%):
Mean: 67.43%, Std Dev: 16.92%
Min: 18%, Max: 100%
Outliers: Humidity values near 18% may represent dry conditions, which are outliers compared to the dataset's general trend.

Wind Speed (Wind Speed_km/h):
Mean: 14.95 km/h, Std Dev: 8.69 km/h
Min: 0 km/h, Max: 83 km/h
Outliers: Wind speeds above 50 km/h could be considered outliers, potentially representing stormy conditions.

## Data Visualization
#### Key Visualizations:
Time Series Analysis: Monthly trends show seasonal variations in temperature, humidity, and wind speed.
Correlation Analysis: A correlation matrix and heatmap reveal relationships between different weather parameters.

#### Seasonal Trends:
Temperature: The dataset reveals clear seasonal trends, with higher temperatures during summer months and lower temperatures during winter.
Humidity: Humidity tends to be lower during warmer months, possibly due to increased evaporation and lower moisture in the air.
Wind Speed: The line plot for the wind speed variable shows that the average wind speed for 12 months follows a seasonal pattern. 
Peal wind speeds are high in January and December who;e June and July have low wind speed. 

## Insights and Conclusion 

Temperature Variability: The dataset shows significant variability in temperature, particularly during transition seasons (spring and autumn). This could impact energy consumption, agriculture, and daily activities.
Humidity Patterns: The relationship between temperature and humidity suggests that as temperatures rise, humidity decreases, which could be important for understanding heatwaves or planning outdoor activities.
Wind and Visibility: High wind speeds tend to correlate with reduced visibility, indicating that windy conditions may often lead to lower visibility, impacting transportation and safety.
