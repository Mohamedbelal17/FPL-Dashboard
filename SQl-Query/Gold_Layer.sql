-- Gold layer
---DimTeam Table
create view Gold.DimTeam as (
select 
 ROW_NUMBER() over (order by  team_name) as team_key ,
team_name ,
team_strength from (select * ,
ROW_NUMBER() over(partition by team_name order by team_strength ) as rn 
 from Silver.Player_Data) as tt
 where rn=1
)
-----

select * from (select * ,
ROW_NUMBER() over(partition by team_name order by team_strength ) as rn 
 from Silver.Player_Data) as tt
 where rn=1

 ---DimPlayer table

create view Gold.DimPlayer as (
select 
ROW_NUMBER() over (order by p.id ) as player_key ,
p.first_name ,
p.second_name ,
p.player_position ,
p.status ,
t.team_key 
from Bronze.Player_Data as p 
left join Gold.DimTeam  t on t.team_name = p.team_name
)

---fact_player_stats table 
create view Gold.FactPlayerStats as (
select 
t.team_key ,
p.player_key ,
d.player_cost ,
d.player_form ,
d.minutes ,
d.goals_scored ,
d.assists ,
d.clean_sheets ,
d.expected_goals ,
d.expected_assists ,
d.goals_conceded ,
d.expected_goals_conceded ,
d.influence ,
d.creativity ,
d.threat ,
d.bouns ,
d.penalties_saved ,
d.saves ,
d.yellow_cards ,
d.red_cards ,
d.gw1_points ,
d.gw2_points ,
d.gw3_points ,
d.gw4_points ,
d.gw5_points ,
d.total_points 
from Silver.Player_Data as d 
left join Gold.DimTeam t on t.team_name = d.team_name 
left join Gold.DimPlayer p on p.player_key = d.id
)