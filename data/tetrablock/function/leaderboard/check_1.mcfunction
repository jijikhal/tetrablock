tag @s add eval_player
#execute if score @s real_score >= $15 leaderboard store result score $15 leaderboard run scoreboard players get $14 leaderboard
execute if entity @s[tag=eval_player] if score @s real_score >= $15 leaderboard if score @s real_score <= $14 leaderboard run data modify block 56 97 -66 Text1 set value '[{"selector":"@p[tag=eval_player]","bold":"false"},{"text":" "},{"score":{"name":"@p[tag=eval_player]","objective":"real_score"}}]'
execute if score @s real_score >= $15 leaderboard if score @s real_score <= $14 leaderboard store result score $15 leaderboard run scoreboard players get @s real_score


execute if score @s real_score >= $14 leaderboard store result score $15 leaderboard run scoreboard players get $14 leaderboard
execute if score @s real_score >= $14 leaderboard run data modify block 56 97 -66 Text1 set from block 56 98 -66 Text4
execute if entity @s[tag=eval_player] if score @s real_score >= $14 leaderboard if score @s real_score <= $13 leaderboard run data modify block 56 98 -66 Text4 set value '[{"selector":"@p[tag=eval_player]","bold":"false"},{"text":" "},{"score":{"name":"@p[tag=eval_player]","objective":"real_score"}}]'
execute if score @s real_score >= $14 leaderboard if score @s real_score <= $13 leaderboard store result score $14 leaderboard run scoreboard players get @s real_score


execute if score @s real_score >= $13 leaderboard store result score $14 leaderboard run scoreboard players get $13 leaderboard
execute if score @s real_score >= $13 leaderboard run data modify block 56 98 -66 Text4 set from block 56 98 -66 Text3
execute if entity @s[tag=eval_player] if score @s real_score >= $13 leaderboard if score @s real_score <= $12 leaderboard run data modify block 56 98 -66 Text3 set value '[{"selector":"@p[tag=eval_player]","bold":"false"},{"text":" "},{"score":{"name":"@p[tag=eval_player]","objective":"real_score"}}]'
execute if score @s real_score >= $13 leaderboard if score @s real_score <= $12 leaderboard store result score $13 leaderboard run scoreboard players get @s real_score

execute if score @s real_score >= $12 leaderboard store result score $13 leaderboard run scoreboard players get $12 leaderboard
execute if score @s real_score >= $12 leaderboard run data modify block 56 98 -66 Text3 set from block 56 98 -66 Text2
execute if entity @s[tag=eval_player] if score @s real_score >= $12 leaderboard if score @s real_score <= $11 leaderboard run data modify block 56 98 -66 Text2 set value '[{"selector":"@p[tag=eval_player]","bold":"false"},{"text":" "},{"score":{"name":"@p[tag=eval_player]","objective":"real_score"}}]'
execute if score @s real_score >= $12 leaderboard if score @s real_score <= $11 leaderboard store result score $12 leaderboard run scoreboard players get @s real_score

execute if score @s real_score >= $11 leaderboard store result score $12 leaderboard run scoreboard players get $11 leaderboard
execute if score @s real_score >= $11 leaderboard run data modify block 56 98 -66 Text2 set from block 56 98 -66 Text1
execute if entity @s[tag=eval_player] if score @s real_score >= $11 leaderboard run data modify block 56 98 -66 Text1 set value '[{"selector":"@p[tag=eval_player]","bold":"false"},{"text":" "},{"score":{"name":"@p[tag=eval_player]","objective":"real_score"}}]'
execute if score @s real_score >= $11 leaderboard store result score $11 leaderboard run scoreboard players get @s real_score

tag @s remove eval_player
