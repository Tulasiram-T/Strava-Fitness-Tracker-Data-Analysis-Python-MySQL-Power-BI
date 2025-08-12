CREATE DATABASE fitness_data;
USE fitness_data;
SELECT * FROM merged_strava_fitness_data LIMIT 10;
describe merged_strava_fitness_data

select * from merged_strava_fitness_data;

-- Total Unique users
SELECT COUNT(DISTINCT Id) AS total_users
FROM merged_strava_fitness_data;

-- Daily Average Steps per User
SELECT 
  Date,
  ROUND(AVG(TotalSteps), 0) AS avg_steps
FROM merged_strava_fitness_data
GROUP BY Date
ORDER BY Date;

-- Top 10 Most Active Users (by VeryActiveMinutes)
SELECT 
  Id,
  SUM(VeryActiveMinutes) AS total_active_minutes
FROM merged_strava_fitness_data
GROUP BY Id
ORDER BY total_active_minutes DESC
LIMIT 10;

-- Calories vs Steps Relationship (Recent Days)
SELECT 
  Date,
  TotalSteps,
  Calories
FROM merged_strava_fitness_data
WHERE TotalSteps IS NOT NULL AND Calories IS NOT NULL
ORDER BY Date DESC
LIMIT 100;

-- Daily Average Calories Burned
SELECT 
  Date,
  ROUND(AVG(Calories), 0) AS avg_calories
FROM merged_strava_fitness_data
GROUP BY Date
ORDER BY Date;

-- User Activity Summary Table (Steps, Distance, Calories)
SELECT 
  Id,
  COUNT(Date) AS active_days,
  ROUND(AVG(TotalSteps)) AS avg_steps,
  ROUND(AVG(TotalDistance), 2) AS avg_distance_km,
  ROUND(AVG(Calories)) AS avg_calories
FROM merged_strava_fitness_data
GROUP BY Id
ORDER BY avg_steps DESC;

-- Top 10 Days with Highest Steps
SELECT 
  Date, 
  Id, 
  TotalSteps
FROM merged_strava_fitness_data
ORDER BY TotalSteps DESC
LIMIT 10;

-- Most Sedentary Users
SELECT 
  Id,
  AVG(SedentaryMinutes) AS avg_sedentary_time
FROM merged_strava_fitness_data
GROUP BY Id
ORDER BY avg_sedentary_time DESC
LIMIT 10;

-- Compare Activity Levels: Light, Moderate, Very Active
SELECT 
  Id,
  AVG(LightlyActiveMinutes) AS light,
  AVG(FairlyActiveMinutes) AS moderate,
  AVG(VeryActiveMinutes) AS intense
FROM merged_strava_fitness_data
GROUP BY Id
ORDER BY intense DESC;

-- Calories Burned vs. Activity Type
SELECT 
  AVG(LightlyActiveMinutes) AS avg_light_minutes,
  AVG(FairlyActiveMinutes) AS avg_moderate_minutes,
  AVG(VeryActiveMinutes) AS avg_intense_minutes,
  AVG(Calories) AS avg_calories
FROM merged_strava_fitness_data;

