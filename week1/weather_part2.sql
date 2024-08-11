/* 1. Find all records where the weather was exactly clear == 1326 */
SELECT count(*) 
FROM weather.`weather data`
WHERE Weather = 'Clear';

/* 2. Find the number of times the wind speed was exactly 4 km/hr */
SELECT count(*)
FROM weather.`weather data`
WHERE `Wind Speed_km/h` = 4;

/* The number of times is 474 */

/* 3. Check if there are any NULL values present in the dataset */

SELECT *
FROM weather.`weather data`
WHERE 'Date/Time' IS NULL
   OR 'Temp_C' IS NULL
   OR 'Dew Point Temp_C' IS NULL
   OR 'Rel Hum_%' IS NULL
   OR `Wind Speed_km/h` IS NULL
   OR `Visibility_km` IS NULL
   OR `Weather` IS NULL;

/* the code outputs nothing meaning that there are no missing values in the table */

/* 4. Rename the column "Weather" to "Weather_Condition." */
ALTER TABLE weather.`weather data`
RENAME COLUMN Weather TO Weather_Condition;

#the column has been successfully renamed

/* 5. What is the mean visibility of the dataset? */
SELECT AVG(visibility_km) as mean_visibility
FROM weather.`weather data`
/* the mean is 27.66444672131151*/

/*6. Find the number of records where the wind speed is greater than 24 km/hr and visibility is equal to 25 km.*/
SELECT count(*)
FROM weather.`weather data`
WHERE `Wind Speed_km/h`>24 && `Visibility_km`=25

/*The number of records is 308*/

/* 7. What is the mean value of each column for each weather condition? */
SELECT 
    `Weather_Condition`,
    AVG(`Temp_C`) AS mean_temperature,
    AVG(`Dew Point Temp_C`) AS mean_dew_point_temperature,
    AVG(`Rel Hum_%`) AS mean_humidity,
    AVG(`Wind Speed_km/h`) AS mean_wind_speed,
    AVG(`Visibility_km`) AS mean_visibility,
    AVG(`Press_kPa`) AS mean_pressure
FROM 
    weather.`weather data`
GROUP BY 
    `Weather_Condition`;

/*8.Find all instances where the weather is clear and the relative humidity is greater than 50, or visibility is above 40.*/
SELECT count(*)
FROM weather.`weather data`
WHERE Weather_Condition = 'Clear' && `Rel Hum_%` > 50;
 /* The answer is 1070 instances */
 
/*9.Find the number of weather conditions that include snow.*/
SELECT count(*) AS Snowy_Weather_Conditions
FROM weather.`weather data`
WHERE Weather_Condition = 'Snow';