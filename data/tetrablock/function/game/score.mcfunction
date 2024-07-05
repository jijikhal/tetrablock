#as at player
execute if score @s lines matches 1 run scoreboard players set @s score 40
execute if score @s lines matches 1 run scoreboard players operation @s score *= @s lvl
execute if score @s lines matches 1 run scoreboard players add @s score 40

execute if score @s lines matches 2 run scoreboard players set @s score 100
execute if score @s lines matches 2 run scoreboard players operation @s score *= @s lvl
execute if score @s lines matches 2 run scoreboard players add @s score 100

execute if score @s lines matches 3 run scoreboard players set @s score 300
execute if score @s lines matches 3 run scoreboard players operation @s score *= @s lvl
execute if score @s lines matches 3 run scoreboard players add @s score 300

execute if score @s lines matches 4 run scoreboard players set @s score 1200
execute if score @s lines matches 4 run scoreboard players operation @s score *= @s lvl
execute if score @s lines matches 4 run scoreboard players add @s score 1200

scoreboard players operation @s real_score += @s score

scoreboard players operation @s total_lines += @s lines
scoreboard players operation @s battle_lines += @s lines

execute if entity @s[scores={total_lines=10..,lvl=..1}] run scoreboard players set @s lvl 2
execute if entity @s[scores={total_lines=20..,lvl=..2}] run scoreboard players set @s lvl 3
execute if entity @s[scores={total_lines=30..,lvl=..3}] run scoreboard players set @s lvl 4
execute if entity @s[scores={total_lines=40..,lvl=..4}] run scoreboard players set @s lvl 5
execute if entity @s[scores={total_lines=50..,lvl=..5}] run scoreboard players set @s lvl 6
execute if entity @s[scores={total_lines=60..,lvl=..6}] run scoreboard players set @s lvl 7
execute if entity @s[scores={total_lines=70..,lvl=..7}] run scoreboard players set @s lvl 8
execute if entity @s[scores={total_lines=80..,lvl=..8}] run scoreboard players set @s lvl 9
execute if entity @s[scores={total_lines=90..,lvl=..9}] run scoreboard players set @s lvl 10
execute if entity @s[scores={total_lines=100..,lvl=..10}] run scoreboard players set @s lvl 11
execute if entity @s[scores={total_lines=110..,lvl=..11}] run scoreboard players set @s lvl 12
execute if entity @s[scores={total_lines=120..,lvl=..12}] run scoreboard players set @s lvl 13
execute if entity @s[scores={total_lines=130..,lvl=..13}] run scoreboard players set @s lvl 14
execute if entity @s[scores={total_lines=140..,lvl=..14}] run scoreboard players set @s lvl 15
execute if entity @s[scores={total_lines=150..,lvl=..15}] run scoreboard players set @s lvl 16
execute if entity @s[scores={total_lines=160..,lvl=..16}] run scoreboard players set @s lvl 17
execute if entity @s[scores={total_lines=170..,lvl=..17}] run scoreboard players set @s lvl 18
execute if entity @s[scores={total_lines=180..,lvl=..18}] run scoreboard players set @s lvl 19
execute if entity @s[scores={total_lines=190..,lvl=..19}] run scoreboard players set @s lvl 20

function tetrablock:render/render_lvl

execute if score $mode sign matches 1 as @s[tag=!loser] run function tetrablock:render/render_score
execute if score $mode sign matches 2..3 at @s[tag=!loser] run function tetrablock:render/render_line_score

execute if score $sounds sign matches 1 if score @s lines matches 1 as @s[tag=!loser] at @s run playsound block.note_block.bell ambient @s ~ ~ ~ 1 0.75
execute if score $sounds sign matches 1 if score @s lines matches 2 as @s[tag=!loser] at @s run playsound block.note_block.bell ambient @s ~ ~ ~ 1 1
execute if score $sounds sign matches 1 if score @s lines matches 3 as @s[tag=!loser] at @s run playsound block.note_block.bell ambient @s ~ ~ ~ 1 1.25
execute if score $sounds sign matches 1 if score @s lines matches 4 as @s[tag=!loser] at @s run playsound entity.player.levelup ambient @s ~ ~ ~ 

scoreboard players reset @s lines
scoreboard players reset @s score

