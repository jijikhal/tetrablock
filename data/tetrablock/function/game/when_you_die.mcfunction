#as at player loser, not in spectator
title @s title [{"text":"Game Over!"}]
tag @s add dead
execute if score $sounds sign matches 1 run playsound entity.wither.death ambient @s ~ ~ ~ 0.5
execute if score $mode sign matches 2 run scoreboard players add @a[tag=!loser] rank 1
gamemode spectator @s
tellraw @a [{"selector": "@s"},{"text": " was eliminated"}]