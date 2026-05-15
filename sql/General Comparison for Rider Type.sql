SELECT 
  member_casual, 
  COUNT(ride_id) AS num_of_rides,
  ROUND(CAST(COUNT(ride_id) AS FLOAT64)/SUM(COUNT(ride_id)) OVER()* 100,2) AS percentage_of_rides,
  ROUND(AVG(ride_duration),2) AS avg_ride_duration,
  APPROX_QUANTILES(ride_duration, 2)[OFFSET(1)] AS median_ride_duration
FROM cyclistic-analysis-amq.cyclistic_data_042025_032026.combined_rides_clean
GROUP BY member_casual
