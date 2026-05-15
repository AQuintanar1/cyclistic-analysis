SELECT 
  ROUND(start_lat,3) AS approx_lat,
  ROUND(start_lng,3) AS approx_lng,
  member_casual, 
  COUNT(ride_id) AS num_of_rides,
FROM cyclistic-analysis-amq.cyclistic_data_042025_032026.combined_rides_clean
WHERE start_lat IS NOT NULL AND start_lng IS NOT NULL AND start_station_name IS NOT NULL
GROUP BY member_casual, approx_lat, approx_lng
ORDER BY num_of_rides DESC