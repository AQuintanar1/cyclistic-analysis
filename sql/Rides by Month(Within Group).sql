WITH month_summary AS (
  SELECT
    member_casual,
    FORMAT_TIMESTAMP("%B", started_at) AS name_of_month,
    FORMAT_TIMESTAMP("%Y-%m", started_at) AS month_and_year,
    COUNT(ride_id) AS number_of_rides,
    ROUND(AVG(ride_duration),2) AS avg_ride_duration,
     APPROX_QUANTILES(ride_duration, 2)[OFFSET(1)] AS median_ride_duration,
  FROM `cyclistic-analysis-amq.cyclistic_data_042025_032026.combined_rides_clean`
  GROUP BY member_casual,name_of_month, month_and_year
)




SELECT 
  member_casual,
  name_of_month,
  month_and_year,
  number_of_rides,
  ROUND(CAST(number_of_rides AS FLOAT64)/SUM(number_of_rides) OVER(PARTITION BY name_of_month)*100,2) AS share_of_each_month,
  ROUND(CAST(number_of_rides AS FLOAT64)/SUM(number_of_rides) OVER(PARTITION BY member_casual)*100,2) AS share_of_each_group,
  avg_ride_duration,
  median_ride_duration,
FROM month_summary
ORDER BY member_casual,month_and_year
