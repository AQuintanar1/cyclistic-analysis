SELECT 
  member_casual, 
  day_of_week,
  COUNT(ride_id) AS num_of_rides,
  ROUND(CAST(COUNT(ride_id) AS FLOAT64)/SUM(COUNT(ride_id)) OVER(PARTITION BY day_of_week),2) AS share_of_each_day,
  ROUND(CAST(COUNT(ride_id) AS FLOAT64)/SUM(COUNT(ride_id)) OVER(PARTITION BY member_casual),2) AS share_within_each_group,  
  ROUND(AVG(ride_duration),2) AS avg_ride_duration,
  APPROX_QUANTILES(ride_duration, 2)[OFFSET(1)] AS median_ride_duration
FROM cyclistic-analysis-amq.cyclistic_data_042025_032026.combined_rides_clean
GROUP BY member_casual, day_of_week
ORDER BY member_casual