#Create pivot_1_member

SELECT 
	week_of_day, member_casual,
    count(ride_id) as total_casual_ride_num_per_day,
	sum(ride_length) as total_casual_ride_time_in_sceond_per_day, #not able to convert to hh:mm:ss b/c it's too big
	left(sec_to_time(sum(ride_length) / count(ride_id)),8) as ave_ride_time__per_day_for_casual 
FROM test.bike5
where member_casual = 'member' 
group by week_of_day 
