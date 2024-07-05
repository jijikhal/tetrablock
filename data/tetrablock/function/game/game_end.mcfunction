scoreboard players set $game_in_progress sign 0
execute as @a unless entity @s[team=player,scores={rank=-2147483648..2147483647}] run scoreboard players set @s rank 0


#thanks to "the der discohund#8028" from minecraft commands discord fo help with this

execute if score $mode sign matches 1 as @a[team=player] store result score @s score_buffer run scoreboard players get @s real_score 
execute if score $mode sign matches 2 as @a[team=player] store result score @s score_buffer run scoreboard players get @s rank
execute if score $mode sign matches 3 as @a[team=player] store result score @s score_buffer run scoreboard players get @s total_lines 
execute if score $mode sign matches 4 as @a[team=player] store result score @s score_buffer run scoreboard players get @s total_pieces 

scoreboard players operation $max score_buffer = @a[team=player,limit=1] score_buffer
scoreboard players operation $max score_buffer > @a[team=player] score_buffer
execute as @a[team=player] if score @s score_buffer = $max score_buffer run scoreboard players set @s rank 1
execute as @a[team=player] if score @s score_buffer = $max score_buffer run team leave @s

scoreboard players operation $max score_buffer = @a[team=player,limit=1] score_buffer
scoreboard players operation $max score_buffer > @a[team=player] score_buffer
execute as @a[team=player] if score @s score_buffer = $max score_buffer run scoreboard players set @s rank 2
execute as @a[team=player] if score @s score_buffer = $max score_buffer run team leave @s

scoreboard players operation $max score_buffer = @a[team=player,limit=1] score_buffer
scoreboard players operation $max score_buffer > @a[team=player] score_buffer
execute as @a[team=player] if score @s score_buffer = $max score_buffer run scoreboard players set @s rank 3
execute as @a[team=player] if score @s score_buffer = $max score_buffer run team leave @s

scoreboard players operation $max score_buffer = @a[team=player,limit=1] score_buffer
scoreboard players operation $max score_buffer > @a[team=player] score_buffer
execute as @a[team=player] if score @s score_buffer = $max score_buffer run scoreboard players set @s rank 4
execute as @a[team=player] if score @s score_buffer = $max score_buffer run team leave @s

scoreboard players operation $max score_buffer = @a[team=player,limit=1] score_buffer
scoreboard players operation $max score_buffer > @a[team=player] score_buffer
execute as @a[team=player] if score @s score_buffer = $max score_buffer run scoreboard players set @s rank 5
execute as @a[team=player] if score @s score_buffer = $max score_buffer run team leave @s

scoreboard players operation $max score_buffer = @a[team=player,limit=1] score_buffer
scoreboard players operation $max score_buffer > @a[team=player] score_buffer
execute as @a[team=player] if score @s score_buffer = $max score_buffer run scoreboard players set @s rank 6
execute as @a[team=player] if score @s score_buffer = $max score_buffer run team leave @s

scoreboard players operation $max score_buffer = @a[team=player,limit=1] score_buffer
scoreboard players operation $max score_buffer > @a[team=player] score_buffer
execute as @a[team=player] if score @s score_buffer = $max score_buffer run scoreboard players set @s rank 7
execute as @a[team=player] if score @s score_buffer = $max score_buffer run team leave @s

scoreboard players operation $max score_buffer = @a[team=player,limit=1] score_buffer
scoreboard players operation $max score_buffer > @a[team=player] score_buffer
execute as @a[team=player] if score @s score_buffer = $max score_buffer run scoreboard players set @s rank 8
execute as @a[team=player] if score @s score_buffer = $max score_buffer run team leave @s


execute if score $mode sign matches 1 run tellraw @a [{"text": "Gamemode: ","bold": true},{"text": "Highscore","bold": true,"color":"yellow"}]
execute if score $mode sign matches 2 run tellraw @a [{"text": "Gamemode: ","bold": true},{"text": "Battle","bold": true,"color":"red"}]
execute if score $mode sign matches 3 run tellraw @a [{"text": "Gamemode: ","bold": true},{"text": "Most Lines","bold": true,"color":"aqua"}]
execute if score $mode sign matches 4 run tellraw @a [{"text": "Gamemode: ","bold": true},{"text": "Most Pieces","bold": true,"color":"green"}]
execute unless score $mode sign matches 2 run tellraw @a [{"text": "1. ","bold": true,"color":"gold"},{"selector": "@a[scores={rank=1}]","color":"white"},{"text": "  "},{"score": {"name":"@p[scores={rank=1}]","objective": "score_buffer"}}]
execute unless score $mode sign matches 2 if entity @a[scores={rank=2}] run tellraw @a [{"text": "2. ","bold": true,"color":"gray"},{"selector": "@a[scores={rank=2}]","color":"white"},{"text": "  "},{"score": {"name":"@p[scores={rank=2}]","objective": "score_buffer"}}]
execute unless score $mode sign matches 2 if entity @a[scores={rank=3}] run tellraw @a [{"text": "3. ","bold": true,"color":"#a76b0d"},{"selector": "@a[scores={rank=3}]","color":"white"},{"text": "  "},{"score": {"name":"@p[scores={rank=3}]","objective": "score_buffer"}}]
execute unless score $mode sign matches 2 if entity @a[scores={rank=4}] run tellraw @a [{"text": "4. ","bold": true,"color":"white"},{"selector": "@a[scores={rank=4}]","color":"white"},{"text": "  "},{"score": {"name":"@p[scores={rank=4}]","objective": "score_buffer"}}]
execute unless score $mode sign matches 2 if entity @a[scores={rank=5}] run tellraw @a [{"text": "5. ","bold": true,"color":"white"},{"selector": "@a[scores={rank=5}]","color":"white"},{"text": "  "},{"score": {"name":"@p[scores={rank=5}]","objective": "score_buffer"}}]
execute unless score $mode sign matches 2 if entity @a[scores={rank=6}] run tellraw @a [{"text": "6. ","bold": true,"color":"white"},{"selector": "@a[scores={rank=6}]","color":"white"},{"text": "  "},{"score": {"name":"@p[scores={rank=6}]","objective": "score_buffer"}}]
execute unless score $mode sign matches 2 if entity @a[scores={rank=7}] run tellraw @a [{"text": "7. ","bold": true,"color":"white"},{"selector": "@a[scores={rank=7}]","color":"white"},{"text": "  "},{"score": {"name":"@p[scores={rank=7}]","objective": "score_buffer"}}]
execute unless score $mode sign matches 2 if entity @a[scores={rank=8}] run tellraw @a [{"text": "8. ","bold": true,"color":"white"},{"selector": "@a[scores={rank=8}]","color":"white"},{"text": "  "},{"score": {"name":"@p[scores={rank=8}]","objective": "score_buffer"}}]

execute if score $mode sign matches 2 run tellraw @a [{"text": "1. ","bold": true,"color":"gold"},{"selector": "@a[scores={rank=1}]","color":"white"},{"text": "  "}]
execute if score $mode sign matches 2 if entity @a[scores={rank=2}] run tellraw @a [{"text": "2. ","bold": true,"color":"gray"},{"selector": "@a[scores={rank=2}]","color":"white"},{"text": "  "}]
execute if score $mode sign matches 2 if entity @a[scores={rank=3}] run tellraw @a [{"text": "3. ","bold": true,"color":"#a76b0d"},{"selector": "@a[scores={rank=3}]","color":"white"},{"text": "  "}]
execute if score $mode sign matches 2 if entity @a[scores={rank=4}] run tellraw @a [{"text": "4. ","bold": true,"color":"white"},{"selector": "@a[scores={rank=4}]","color":"white"},{"text": "  "}]
execute if score $mode sign matches 2 if entity @a[scores={rank=5}] run tellraw @a [{"text": "5. ","bold": true,"color":"white"},{"selector": "@a[scores={rank=5}]","color":"white"},{"text": "  "}]
execute if score $mode sign matches 2 if entity @a[scores={rank=6}] run tellraw @a [{"text": "6. ","bold": true,"color":"white"},{"selector": "@a[scores={rank=6}]","color":"white"},{"text": "  "}]
execute if score $mode sign matches 2 if entity @a[scores={rank=7}] run tellraw @a [{"text": "7. ","bold": true,"color":"white"},{"selector": "@a[scores={rank=7}]","color":"white"},{"text": "  "}]
execute if score $mode sign matches 2 if entity @a[scores={rank=8}] run tellraw @a [{"text": "8. ","bold": true,"color":"white"},{"selector": "@a[scores={rank=8}]","color":"white"},{"text": "  "}]

execute if score $mode sign matches 1 run advancement grant @a[scores={real_score=50000..}] only tetrablock:score50
execute if score $mode sign matches 1 run advancement grant @a[scores={real_score=100000..}] only tetrablock:score100
execute if score $mode sign matches 1 run advancement grant @a[scores={real_score=250000..}] only tetrablock:score250
execute if score $mode sign matches 1 run advancement grant @a[scores={real_score=500000..}] only tetrablock:score500
execute if score $mode sign matches 1 run advancement grant @a[scores={real_score=1000000..}] only tetrablock:score1000

execute if score $mode sign matches 3 run advancement grant @a[scores={total_lines=25..}] only tetrablock:lines25
execute if score $mode sign matches 3 run advancement grant @a[scores={total_lines=50..}] only tetrablock:lines50
execute if score $mode sign matches 3 run advancement grant @a[scores={total_lines=100..}] only tetrablock:lines100
execute if score $mode sign matches 3 run advancement grant @a[scores={total_lines=150..}] only tetrablock:lines150
execute if score $mode sign matches 3 run advancement grant @a[scores={total_lines=200..}] only tetrablock:lines200

execute if score $mode sign matches 4 run advancement grant @a[scores={total_pieces=..6}] only tetrablock:piece6
execute if score $mode sign matches 4 run advancement grant @a[scores={total_pieces=30..}] only tetrablock:piece30
execute if score $mode sign matches 4 run advancement grant @a[scores={total_pieces=40..}] only tetrablock:piece40
execute if score $mode sign matches 4 run advancement grant @a[scores={total_pieces=45..}] only tetrablock:piece45

execute if score $mode sign matches 1 as @a run function tetrablock:leaderboard/check_1
execute if score $mode sign matches 3 as @a run function tetrablock:leaderboard/check_3
execute if score $mode sign matches 4 as @a run function tetrablock:leaderboard/check_4

execute if score $ll sign matches 2 run function tetrablock:leaderboard/ll_1
execute if score $ll sign matches 4 run function tetrablock:leaderboard/ll_3
execute if score $ll sign matches 6 run function tetrablock:leaderboard/ll_4

team empty player
team empty spectator
clear @a
bossbar set end_timer players

stopsound @a voice
tp @a 89 100 -60
gamemode adventure @a

scoreboard objectives setdisplay sidebar lobby
function tetrablock:leaderboard/lobby_leaderboard

tag @a remove loser
tag @a remove dead


