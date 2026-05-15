# cyclistic-analysis

Business Task
 
  Cyclistic, a Chicago based bike share company, found that annual members are more profitable than casual riders. The marketing analytics team was tasked with analyzing behavioral differences between the two rider groups to better understand how casual riders use the service differently. The goal of this project was to identify patterns in rider behavior and develop recommendations that could support conversion to annual memberships.

Data Sources
  
  The Cyclistic dataset consists of 12 monthly trip data CSV files provided through the Google Data Analytics Capstone case study. The data originates from Divvy, a real Chicago based bike share company owned by Lyft, and contains ride information including rider type, ride timestamps, station locations, and bike type.
  The combined dataset included over 5 million unique ride records spanning April 2025 through March 2026. Due to file size limitations, the data was uploaded to Google Cloud Storage and processed in BigQuery for cleaning and analysis.
  A limitation of the dataset is that it does not have specific rider information, meaning individual rider behavior and potential conversion patterns could not be directly tracked.
  Cyclistic is a fictional company created for the case study,therefore for the purpose of this case study Divvy’s publicly available membership structure, pricing model, and app usage were used as a reference point when developing recommendations and interpreting rider behavior patterns.
  
Data Cleaning and Manipulation
 
  The raw trip data was provided as 12 separate monthly CSV files covering April 2025 through March 2026. Due to file size limitations, the datasets were uploaded to Google Cloud Storage and processed in BigQuery, where the monthly tables were combined into a single working dataset for analysis.
  Several cleaning and preparation steps were performed before analysis. Duplicate records and invalid header rows were removed, and new fields were created for ride duration and day of week. Rides with negative durations, durations rounded to zero minutes, or extreme duration values were filtered out to improve data reliability. A small number of rides outside the intended April 2025–March 2026 range were identified and removed after grouping by the starting month that introduced an unintended March 2025 category.
  During initial exploration, I noticed missing station data and less accurate coordinate data, which led to further investigation. I found that electric bikes did not always include exact docking station information because they are not required to be returned to fixed docking locations, which influenced the accuracy of coordinates and how that was interpreted during analysis.
  Additional quality checks were performed throughout the project. Median ride duration was compared against average duration to evaluate the impact of outliers.

Analysis Summary
  
Overall Rider Differences
  
Annual members generated a significantly larger number of total rides than casual riders throughout the dataset. However, casual riders consistently showed longer ride durations, suggesting differences in how the service is used between the two rider groups.
To make comparisons easier to interpret, within-group percentages were included alongside total ride counts and duration metrics. Because the dataset only contains ride-level information, conclusions about individual rider behavior or long-term conversion patterns could not be directly made.

Seasonal Trends
  
Casual ridership showed stronger seasonal variation than annual members, with ride volume increasing significantly during summer months. Member ridership remained more consistent throughout the year.
These patterns suggest that casual riders may use the service more for leisure-oriented activities, while annual members may rely on bike sharing more consistently for routine transportation or commuting.

 Weekday vs Weekend Behavior
 
Casual riders showed a higher proportion of rides during weekends compared to annual members, while members maintained a more consistent distribution across weekdays.
This difference further supports the possibility that casual riders are more likely to use the service recreationally, while annual members may incorporate bike sharing more regularly into commuting or day-to-day transportation.

Ride Duration Patterns
    
Casual riders consistently recorded longer average and median ride durations than annual members across multiple comparisons. The gap between average and median ride durations also suggested greater variability and right-skewed ride distributions among casual riders.
Comparing median duration alongside average duration helped reduce the influence of extreme ride values and provided a more stable comparison between rider groups.
  
Bike Type Usage
  
Differences were also observed across bike types. Electric bikes were associated with shorter average ride durations for both rider groups compared to classic bikes.
During initial exploration, inconsistencies in station and coordinate data led to further investigation into operational differences between bike types. Electric bikes did not always contain exact docking station information because they are not required to be returned to fixed docking locations, which influenced how location data was interpreted during analysis.

Visualizations

  Dashboard 1 – Rider Behavior Overview
  This dashboard compares overall differences between casual riders and annual members, including total ride volume, ride duration, and monthly riding patterns.
  
  
  Dashboard 2 – Weekly Usage Patterns
  This dashboard focuses on weekly riding behavior by comparing ride distribution and average ride duration across each day of the week for both rider groups.
	




  Dashboard 3 – Bike Type & Ride Location
  This dashboard explores differences in bike type usage, ride duration by bike type, and approximate ride start locations across Chicago.


Recommendations

1. Highlight membership savings after rides
Casual riders could be shown estimated membership savings immediately after completing a ride. Annual members receive longer included ride times and lower electric bike rates, meaning riders who frequently take longer rides may benefit financially from converting to a membership plan.

2. Increase marketing efforts during high casual-ridership periods
Casual ridership showed stronger increases during weekends and summer months, suggesting more leisure-oriented usage patterns. Cyclistic could consider increasing marketing campaigns, promotions, or membership offers during these periods to target riders when casual usage is highest.
The data also showed more consistent riding behavior among annual members throughout the week and year, which may indicate more commuting-oriented usage. Additional marketing near public transit hubs or commuter-heavy areas could help position bike sharing as part of a regular commuting routine.

3. Use electric bike engagement to encourage app-based membership conversion
Unlike classic bikes, electric bikes require riders to use the Cyclistic app to begin a ride. This creates additional opportunities for direct engagement with casual riders through membership prompts, ride summaries, and personalized offers.
Electric bikes were also associated with shorter ride durations for both casual riders and members, which may reflect convenience-oriented usage patterns. Cyclistic could consider promoting electric bikes as an accessible entry point for new riders while using app engagement to increase awareness of membership benefits.
