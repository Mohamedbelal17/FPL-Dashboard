create table Silver.Player_Data (
id int ,
player_cost float , 
first_name varchar(30) ,
second_name varchar(30) ,
player_form float ,
status varchar(30) ,
minutes int ,
player_position varchar(10),
goals_scored int ,
assists int ,
clean_sheets int ,
expected_goals float ,
expected_assists float ,
goals_conceded int ,
expected_goals_conceded float ,
influence float ,
creativity float ,
threat int ,
bouns int ,
penalties_saved int ,
saves int ,
yellow_cards int ,
red_cards int ,
gw1_points int ,
gw2_points int ,
gw3_points int ,
gw4_points int ,
gw5_points int ,
team_name varchar(20) ,
team_strength int ,
total_points int )

----- load to silver layer

insert into Silver.Player_Data ( [id]
      ,[player_cost]
      ,[first_name]
      ,[second_name]
      ,[player_form]
      ,[status]
      ,[minutes]
      ,[player_position]
      ,[goals_scored]
      ,[assists]
      ,[clean_sheets]
      ,[expected_goals]
      ,[expected_assists]
      ,[goals_conceded]
      ,[expected_goals_conceded]
      ,[influence]
      ,[creativity]
      ,[threat]
      ,[bouns]
      ,[penalties_saved]
      ,[saves]
      ,[yellow_cards]
      ,[red_cards]
      ,[gw1_points]
      ,[gw2_points]
      ,[gw3_points]
      ,[gw4_points]
      ,[gw5_points]
      ,[team_name]
      ,[team_strength]
      ,[total_points] )
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