tag @s add eval_player
#execute if score @s total_pieces >= $45 leaderboard store result score $45 leaderboard run scoreboard players get $44 leaderboard
execute if entity @s[tag=eval_player] if score @s total_pieces >= $45 leaderboard if score @s total_pieces <= $44 leaderboard run data modify block 60 97 -66 front_text.messages[0] set value '[{"selector":"@p[tag=eval_player]","bold":"false"},{"text":" "},{"score":{"name":"@p[tag=eval_player]","objective":"total_pieces"}}]'
execute if score @s total_pieces >= $45 leaderboard if score @s total_pieces <= $44 leaderboard store result score $45 leaderboard run scoreboard players get @s total_pieces


execute if score @s total_pieces >= $44 leaderboard store result score $45 leaderboard run scoreboard players get $44 leaderboard
execute if score @s total_pieces >= $44 leaderboard run data modify block 60 97 -66 front_text.messages[0] set from block 60 98 -66 front_text.messages[3]
execute if entity @s[tag=eval_player] if score @s total_pieces >= $44 leaderboard if score @s total_pieces <= $43 leaderboard run data modify block 60 98 -66 front_text.messages[3] set value '[{"selector":"@p[tag=eval_player]","bold":"false"},{"text":" "},{"score":{"name":"@p[tag=eval_player]","objective":"total_pieces"}}]'
execute if score @s total_pieces >= $44 leaderboard if score @s total_pieces <= $43 leaderboard store result score $44 leaderboard run scoreboard players get @s total_pieces


execute if score @s total_pieces >= $43 leaderboard store result score $44 leaderboard run scoreboard players get $43 leaderboard
execute if score @s total_pieces >= $43 leaderboard run data modify block 60 98 -66 front_text.messages[3] set from block 60 98 -66 front_text.messages[2]
execute if entity @s[tag=eval_player] if score @s total_pieces >= $43 leaderboard if score @s total_pieces <= $42 leaderboard run data modify block 60 98 -66 front_text.messages[2] set value '[{"selector":"@p[tag=eval_player]","bold":"false"},{"text":" "},{"score":{"name":"@p[tag=eval_player]","objective":"total_pieces"}}]'
execute if score @s total_pieces >= $43 leaderboard if score @s total_pieces <= $42 leaderboard store result score $43 leaderboard run scoreboard players get @s total_pieces

execute if score @s total_pieces >= $42 leaderboard store result score $43 leaderboard run scoreboard players get $42 leaderboard
execute if score @s total_pieces >= $42 leaderboard run data modify block 60 98 -66 front_text.messages[2] set from block 60 98 -66 front_text.messages[1]
execute if entity @s[tag=eval_player] if score @s total_pieces >= $42 leaderboard if score @s total_pieces <= $41 leaderboard run data modify block 60 98 -66 front_text.messages[1] set value '[{"selector":"@p[tag=eval_player]","bold":"false"},{"text":" "},{"score":{"name":"@p[tag=eval_player]","objective":"total_pieces"}}]'
execute if score @s total_pieces >= $42 leaderboard if score @s total_pieces <= $41 leaderboard store result score $42 leaderboard run scoreboard players get @s total_pieces

execute if score @s total_pieces >= $41 leaderboard store result score $42 leaderboard run scoreboard players get $41 leaderboard
execute if score @s total_pieces >= $41 leaderboard run data modify block 60 98 -66 front_text.messages[1] set from block 60 98 -66 front_text.messages[0]
execute if entity @s[tag=eval_player] if score @s total_pieces >= $41 leaderboard run data modify block 60 98 -66 front_text.messages[0] set value '[{"selector":"@p[tag=eval_player]","bold":"false"},{"text":" "},{"score":{"name":"@p[tag=eval_player]","objective":"total_pieces"}}]'
execute if score @s total_pieces >= $41 leaderboard store result score $41 leaderboard run scoreboard players get @s total_pieces

tag @s remove eval_player
