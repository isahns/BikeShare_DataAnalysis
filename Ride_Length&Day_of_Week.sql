#Create the trimmed table, calculate Ride_Length and Day_of_week from The_raw_data.csv

SELECT 
	bikeshare.bike.ride_id, 
	dayname(started_at) as week_of_day, 
    test.bike4.member_casual,
    test.bike4.ride_length
FROM bikeshare.bike
INNER JOIN test.bike4 ON bikeshare.bike.ride_id=test.bike4.ride_id;

/*the following is subquery, alternative way, but it takes way to much longer time on running and fentching 
SELECT 
	ride_id, 
	dayname(started_at) as week_of_day, 
    member_casual,
    (select ride_length from test.bike4 where bikeshare.bike.ride_id = test.bike4.ride_id) as ride1_length
FROM bikeshare.bike
order by ride_id
*/


