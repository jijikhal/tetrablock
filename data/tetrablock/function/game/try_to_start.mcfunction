execute if score $game_in_progress sign matches 0 run team join player @a[team=!spectator] 
scoreboard players set $start_not_possible sign 0
scoreboard players set @a players 0
execute as @a[team=player] run scoreboard players add @a players 1
execute if score $mode sign matches 2 if score @p players matches 1 run tellraw @a [{"text":"This gamemode can only be played with 2-8 players. Please get more players or select a different gamemode"}]
execute if score $mode sign matches 2 if score @p players matches 1 run scoreboard players set $start_not_possible sign 1

execute if score $game_in_progress sign matches 1 positioned 50 100 -60 run tellraw @a[distance=..6] [{"text":"There is currently a game in progress"}]
execute if score $game_in_progress sign matches 1 run scoreboard players set $start_not_possible sign 1

execute if score @p players matches ..0 run tellraw @a [{"text":"There are currently no players on the "},{"bold": true,"color":"red","text":"Players"},{"bold": false,"color":"reset","text":" team. Please join the team, if you want to play"}]
execute if score @p players matches ..0 run scoreboard players set $start_not_possible sign 1

execute if score @p players matches 9.. run tellraw @a [{"text":"There is currently "},{"score": {"name":"@p","objective":"players"}},{"text":"players on the "},{"bold": true,"color":"red","text":"Players"},{"bold": false,"color":"reset","text":" team. Some of the will have to join the spectator team if you want to play, as the player limit is 8 players"}]
execute if score @p players matches 9.. run scoreboard players set $start_not_possible sign 1

execute if score $start_not_possible sign matches 0 run function tetrablock:game/start_game