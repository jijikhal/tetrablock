#scoreboard players remove @a[scores={ice_timer=1..}] ice_timer 1

execute as @a[scores={drop_dye=1..}] at @s if score @s battle_lines matches 5.. run effect give @a[team=player,tag=!loser,distance=1..] blindness 5 0
execute as @a[scores={drop_dye=1..}] at @s if score @s battle_lines matches 5.. run title @a[team=player,tag=!loser,distance=1..] actionbar [{"text": "You were blinded by ","color":"gray"},{"selector": "@s"}]
execute if score $sounds sign matches 1 as @a[scores={drop_dye=1..}] at @s if score @s battle_lines matches 5.. at @a[team=player,tag=!loser] run playsound entity.player.splash ambient @a ~ ~ ~ 
execute as @a[scores={drop_dye=1..}] at @s if score @s battle_lines matches ..4 run title @s actionbar [{"text": "You don't have enough lines to buy this item!","color":"red"}]
execute as @a[scores={drop_dye=1..}] at @s if score @s battle_lines matches 5.. run scoreboard players remove @s battle_lines 5


execute as @a[scores={drop_tnt=1..}] at @s if score @s battle_lines matches 50.. at @e[tag=spawn,limit=1,sort=nearest] run fill ~ ~-2 ~5 ~ ~-21 ~-4 air
execute if score $sounds sign matches 1 as @a[scores={drop_tnt=1..}] at @s if score @s battle_lines matches 50.. at @s run playsound entity.generic.explode ambient @s ~ ~ ~ 
execute as @a[scores={drop_tnt=1..}] at @s if score @s battle_lines matches ..49 run title @s actionbar [{"text": "You don't have enough lines to buy this item!","color":"red"}]
execute as @a[scores={drop_tnt=1..}] at @s if score @s battle_lines matches 50.. run scoreboard players remove @s battle_lines 50


execute as @a[scores={drop_ice=1..}] at @s if score @s battle_lines matches 10.. run scoreboard players add @a[team=player,tag=!loser,distance=1..] ice_timer 1
execute as @a[scores={drop_ice=1..}] at @s if score @s battle_lines matches 10.. run title @a[team=player,tag=!loser,distance=1..] actionbar [{"text": "Your piece was frozen by ","color":"aqua"},{"selector": "@s"}]
execute if score $sounds sign matches 1 as @a[scores={drop_ice=1..}] at @s if score @s battle_lines matches 10.. at @a[team=player,tag=!loser] run playsound block.glass.break ambient @a ~ ~ ~ 
execute as @a[scores={drop_ice=1..}] at @s if score @s battle_lines matches ..9 run title @s actionbar [{"text": "You don't have enough lines to buy this item!","color":"red"}]
execute as @a[scores={drop_ice=1..}] at @s if score @s battle_lines matches 10.. run scoreboard players remove @s battle_lines 10

execute as @a[scores={drop_gray=1..}] at @s if score @s battle_lines matches 10.. at @a[team=player,tag=!loser,distance=1..] at @e[tag=spawn,limit=1,sort=nearest] positioned ~ ~-2 ~5 run function tetrablock:game/add_line
execute if score $sounds sign matches 1 as @a[scores={drop_gray=1..}] at @s if score @s battle_lines matches 10.. at @a run playsound block.note_block.bit ambient @s ~ ~ ~ 
execute as @a[scores={drop_gray=1..}] at @s if score @s battle_lines matches 10.. run title @a[team=player,tag=!loser,distance=1..] actionbar [{"text": "Your pieces were moved up by ","color":"gray"},{"selector": "@s"}]
execute as @a[scores={drop_gray=1..}] at @s if score @s battle_lines matches ..9 run title @s actionbar [{"text": "You don't have enough lines to buy this item!","color":"red"}]
execute as @a[scores={drop_gray=1..}] at @s if score @s battle_lines matches 10.. run scoreboard players remove @s battle_lines 10


execute as @a[scores={drop_dye=1..}] at @s run function tetrablock:render/render_line_score
execute as @a[scores={drop_tnt=1..}] at @s run function tetrablock:render/render_line_score
execute as @a[scores={drop_ice=1..}] at @s run function tetrablock:render/render_line_score
execute as @a[scores={drop_gray=1..}] at @s run function tetrablock:render/render_line_score

scoreboard players reset @a drop_dye
scoreboard players reset @a drop_gray
scoreboard players reset @a drop_ice
scoreboard players reset @a drop_tnt