/* Create pivot_2_casual.cvs, calculate attributes casual's total ride #, casual's total ride length 
and casual's average ride time = casual's total ride length / casual's total ride */

SELECT 
    week_of_day,
    member_casual,
    left(sec_to_time(sum(ride_length) / count(ride_id)),8) as ave_casual_ride_length,
    sum(ride_length) as total_casual_ride_length, #the unit is second, not able to convert to hh:mm:ss b/c it's too big
    count(ride_id) as total_casual_ride_num
FROM test.bike5
Where member_casual = 'casual'
group by week_of_day 
Order by ave_casual_ride_length desc
