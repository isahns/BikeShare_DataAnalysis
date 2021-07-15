/* Create pivot_2_member.cvs, calculate attributes member's total ride #, member's total ride length 
and member's average ride time = member's total ride length / member's total ride */

SELECT 
    week_of_day,
    member_casual,
    left(sec_to_time(sum(ride_length) / count(ride_id)),8) as ave_member_ride_length,
    sum(ride_length) as total_member_ride_length, #the unit is second, not able to convert to hh:mm:ss b/c it's too big
    count(ride_id) as total_member_ride_num
FROM test.bike5
WHere member_casual = 'member'
group by week_of_day 
Order by ave_member_ride_length desc
