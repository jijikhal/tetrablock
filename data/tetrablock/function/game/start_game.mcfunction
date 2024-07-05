kill @e[tag=tetrablock]

scoreboard objectives remove real_score
scoreboard objectives remove total_lines
scoreboard objectives remove total_pieces

function tetrablock:load

team join player @a[team=!spectator]

tag @a remove player1
tag @a remove player2
tag @a remove player3
tag @a remove player4
tag @a remove player5
tag @a remove player6
tag @a remove player7
tag @a remove player8
tag @a remove loser
tag @a remove dead

scoreboard players reset @a control
scoreboard players reset @a lvl
scoreboard players reset @a real_score
scoreboard players reset @a total_lines
scoreboard players reset @a battle_lines
scoreboard players reset @a total_pieces
scoreboard players reset @a players
scoreboard players reset @a saved
scoreboard players reset @a rank
scoreboard players reset @a leave
scoreboard players reset @a ice_timer
scoreboard players reset $music_timer sign

gamemode adventure @a[team=player]


execute store result score @a lvl run scoreboard players get $start_lvl sign

execute as @a[team=player] run scoreboard players add @a players 1

execute if score @p players matches 1.. run summon armor_stand -8 112 18 {NoGravity:1,Invisible:1,Marker:1,Tags:["spawn1","tetrablock","spawn"]}
execute if score @p players matches 2.. run summon armor_stand -8 112 -3 {NoGravity:1,Invisible:1,Marker:1,Tags:["spawn2","tetrablock","spawn"]}
execute if score @p players matches 3.. run summon armor_stand -8 112 -24 {NoGravity:1,Invisible:1,Marker:1,Tags:["spawn3","tetrablock","spawn"]}
execute if score @p players matches 4.. run summon armor_stand -8 112 -45 {NoGravity:1,Invisible:1,Marker:1,Tags:["spawn4","tetrablock","spawn"]}
execute if score @p players matches 5.. run summon armor_stand -8 112 -66 {NoGravity:1,Invisible:1,Marker:1,Tags:["spawn5","tetrablock","spawn"]}
execute if score @p players matches 6.. run summon armor_stand -8 112 -87 {NoGravity:1,Invisible:1,Marker:1,Tags:["spawn6","tetrablock","spawn"]}
execute if score @p players matches 7.. run summon armor_stand -8 112 -108 {NoGravity:1,Invisible:1,Marker:1,Tags:["spawn7","tetrablock","spawn"]}
execute if score @p players matches 8.. run summon armor_stand -8 112 -129 {NoGravity:1,Invisible:1,Marker:1,Tags:["spawn8","tetrablock","spawn"]}

tag @p[team=player] add player1
tag @p[team=player,tag=!player1] add player2
tag @p[team=player,tag=!player1,tag=!player2] add player3
tag @p[team=player,tag=!player1,tag=!player2,tag=!player3] add player4
tag @p[team=player,tag=!player1,tag=!player2,tag=!player3,tag=!player4] add player5
tag @p[team=player,tag=!player1,tag=!player2,tag=!player3,tag=!player4,tag=!player5] add player6
tag @p[team=player,tag=!player1,tag=!player2,tag=!player3,tag=!player4,tag=!player5,tag=!player6] add player7
tag @p[team=player,tag=!player1,tag=!player2,tag=!player3,tag=!player4,tag=!player5,tag=!player6,tag=!player7] add player8

tp @p[tag=player1] 8 100 15 90 0
tp @p[tag=player2] 8 100 -6 90 0
tp @p[tag=player3] 8 100 -27 90 0
tp @p[tag=player4] 8 100 -48 90 0
tp @p[tag=player5] 8 100 -69 90 0
tp @p[tag=player6] 8 100 -90 90 0
tp @p[tag=player7] 8 100 -111 90 0
tp @p[tag=player8] 8 100 -132 90 0

execute at @e[tag=spawn] run fill ~ ~-2 ~5 ~ ~-21 ~-4 air

execute if score $mode sign matches 1 at @e[tag=spawn] run clone 48 98 -55 48 96 -60 ~ ~-4 ~-11
execute if score $mode sign matches 2..3 at @e[tag=spawn] run clone 50 98 -61 50 96 -66 ~ ~-4 ~-11
execute if score $mode sign matches 4 at @e[tag=spawn] run clone 52 98 -61 52 96 -66 ~ ~-4 ~-11

execute if score $save sign matches 1 at @e[tag=spawn] run fill ~ ~ ~ ~ ~5 ~5 air
execute if score $save sign matches 1 at @e[tag=spawn] run clone 50 98 -55 50 98 -59 ~ ~5 ~1
execute if score $save sign matches 0 at @e[tag=spawn] run fill ~ ~ ~ ~ ~5 ~5 bedrock

execute if score $next_piece sign matches 1 at @e[tag=spawn] run fill ~ ~-14 ~-11 ~ ~-7 ~-6 air
execute if score $next_piece sign matches 1 at @e[tag=spawn] run clone 48 98 -62 48 96 -66 ~ ~-9 ~-10
execute if score $next_piece sign matches 0 at @e[tag=spawn] run fill ~ ~-14 ~-11 ~ ~-7 ~-6 bedrock

execute as @a at @s run function tetrablock:render/render_lvl
scoreboard players set $game_in_progress sign 1 


execute if score $end sign matches 2 run scoreboard players set $end_timer sign 1201
execute if score $end sign matches 2 run bossbar set end_timer max 1200
execute if score $end sign matches 3 run scoreboard players set $end_timer sign 6001
execute if score $end sign matches 3 run bossbar set end_timer max 6000
execute if score $end sign matches 4 run scoreboard players set $end_timer sign 12001
execute if score $end sign matches 4 run bossbar set end_timer max 12000
execute if score $end sign matches 2..4 run bossbar set end_timer players @a 

execute if score $mode sign matches 1 run scoreboard players set @a[team=player] real_score 0
execute if score $mode sign matches 3 run scoreboard players set @a[team=player] total_lines 0
execute if score $mode sign matches 4 run scoreboard players set @a[team=player] total_pieces 0

execute as @a unless score @s ARR matches 0.. run scoreboard players set @s ARR 1
execute as @a unless score @s DAS matches 0.. run scoreboard players set @s DAS 6
execute as @a unless score @s no_shift_on matches 0.. run scoreboard players set @s no_shift_on 1

execute if score $mode sign matches 1 run scoreboard objectives setdisplay sidebar real_score
execute if score $mode sign matches 2 run scoreboard objectives setdisplay sidebar
execute if score $mode sign matches 3 run scoreboard objectives setdisplay sidebar total_lines
execute if score $mode sign matches 4 run scoreboard objectives setdisplay sidebar total_pieces
