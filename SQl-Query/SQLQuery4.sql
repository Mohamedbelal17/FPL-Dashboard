--- there is no duplication in data
select id , count(*) from Bronze.Player_Data
group by id
having count(*) > 1

---- check the whiteSpace 
select * from Bronze.Player_Data
where TRIM(status) != status

----Check the consistency of values
select distinct team_strength from Bronze.Player_Data

------ game week
select * from Bronze.Player_Data 
where gw1_points is null or gw1_points=' '
or gw2_points is null or gw2_points=' '   
or gw3_points is null or gw3_points=' '
or gw4_points is null or gw4_points=' '
or gw5_points is null or gw5_points=' '

select count(*) from Bronze.Player_Data 
where  gw2_points=' '

select case
when gw1_points=' ' then '0'
else gw1_points
end gw1_points
from Bronze.Player_Data 

select cast(gw1_points as float ) from Bronze.Player_Data 


