# Create Pivot_1_total.csv

select 
	member_casual, #w/o this clmn, it could be give the result of total and total ave
    count(ride_id) as total_num_of_member_ride, 
    sum(ride_length)as total_ride_sec,
	left(sec_to_time(sum(ride_length) / count(ride_id)),8) as ave_time_per_ride 
from test.bike4
group by member_casual #w/o this clause, it could be give the result of total and total ave


