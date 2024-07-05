tag @s add eval_player
#execute if score @s total_lines >= $35 leaderboard store result score $35 leaderboard run scoreboard players get $34 leaderboard
execute if entity @s[tag=eval_player] if score @s total_lines >= $35 leaderboard if score @s total_lines <= $34 leaderboard run data modify block 58 97 -66 Text1 set value '[{"selector":"@p[tag=eval_player]","bold":"false"},{"text":" "},{"score":{"name":"@p[tag=eval_player]","objective":"total_lines"}}]'
execute if score @s total_lines >= $35 leaderboard if score @s total_lines <= $34 leaderboard store result score $35 leaderboard run scoreboard players get @s total_lines


execute if score @s total_lines >= $34 leaderboard store result score $35 leaderboard run scoreboard players get $34 leaderboard
execute if score @s total_lines >= $34 leaderboard run data modify block 58 97 -66 Text1 set from block 58 98 -66 Text4
execute if entity @s[tag=eval_player] if score @s total_lines >= $34 leaderboard if score @s total_lines <= $33 leaderboard run data modify block 58 98 -66 Text4 set value '[{"selector":"@p[tag=eval_player]","bold":"false"},{"text":" "},{"score":{"name":"@p[tag=eval_player]","objective":"total_lines"}}]'
execute if score @s total_lines >= $34 leaderboard if score @s total_lines <= $33 leaderboard store result score $34 leaderboard run scoreboard players get @s total_lines


execute if score @s total_lines >= $33 leaderboard store result score $34 leaderboard run scoreboard players get $33 leaderboard
execute if score @s total_lines >= $33 leaderboard run data modify block 58 98 -66 Text4 set from block 58 98 -66 Text3
execute if entity @s[tag=eval_player] if score @s total_lines >= $33 leaderboard if score @s total_lines <= $32 leaderboard run data modify block 58 98 -66 Text3 set value '[{"selector":"@p[tag=eval_player]","bold":"false"},{"text":" "},{"score":{"name":"@p[tag=eval_player]","objective":"total_lines"}}]'
execute if score @s total_lines >= $33 leaderboard if score @s total_lines <= $32 leaderboard store result score $33 leaderboard run scoreboard players get @s total_lines

execute if score @s total_lines >= $32 leaderboard store result score $33 leaderboard run scoreboard players get $32 leaderboard
execute if score @s total_lines >= $32 leaderboard run data modify block 58 98 -66 Text3 set from block 58 98 -66 Text2
execute if entity @s[tag=eval_player] if score @s total_lines >= $32 leaderboard if score @s total_lines <= $31 leaderboard run data modify block 58 98 -66 Text2 set value '[{"selector":"@p[tag=eval_player]","bold":"false"},{"text":" "},{"score":{"name":"@p[tag=eval_player]","objective":"total_lines"}}]'
execute if score @s total_lines >= $32 leaderboard if score @s total_lines <= $31 leaderboard store result score $32 leaderboard run scoreboard players get @s total_lines

execute if score @s total_lines >= $31 leaderboard store result score $32 leaderboard run scoreboard players get $31 leaderboard
execute if score @s total_lines >= $31 leaderboard run data modify block 58 98 -66 Text2 set from block 58 98 -66 Text1
execute if entity @s[tag=eval_player] if score @s total_lines >= $31 leaderboard run data modify block 58 98 -66 Text1 set value '[{"selector":"@p[tag=eval_player]","bold":"false"},{"text":" "},{"score":{"name":"@p[tag=eval_player]","objective":"total_lines"}}]'
execute if score @s total_lines >= $31 leaderboard store result score $31 leaderboard run scoreboard players get @s total_lines

tag @s remove eval_player
