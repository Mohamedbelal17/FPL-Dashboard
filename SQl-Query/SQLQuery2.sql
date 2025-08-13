select id ,
round(player_cost ,2) as player_cost ,
first_name ,
second_name ,
round(player_form , 2) as player_form ,
status ,
minutes ,
player_position ,
goals_scored ,
assists , 
clean_sheets ,
round(expected_goals , 3) as expected_goals , 
round(expected_assists , 3 ) as expected_assists ,
goals_conceded ,
round(expected_goals_conceded , 3) as expected_goals_conceded ,
round(influence , 2 ) as influence ,
round(creativity , 2 ) as creativity ,
threat ,
bouns ,
penalties_saved ,
saves ,
yellow_cards ,
red_cards ,
CAST(gw1_points as float ) as gw1_points ,
CAST(gw2_points as float ) as gw2_points ,
CAST(gw3_points as float ) as gw3_points ,
CAST(gw4_points as float ) as gw4_points ,
CAST(gw5_points as float ) as gw5_points ,
team_name , 
team_strength ,
 total_points
from Bronze.Player_Data

select * from Bronze.Player_Data



