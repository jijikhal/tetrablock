execute unless entity @e[tag=ll_click] run summon villager 64 100.5 -65 {Tags:["ll_click"],Silent:1,NoAI:1,NoGravity:1,Invulnerable:1,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000000,ShowParticles:0b}],Offers:{}}
execute as @a if score @s ll_click matches 1.. run scoreboard players add $ll sign 1
execute as @a if score @s ll_click matches 1.. run scoreboard players set @s ll_click 0
execute if score $ll sign matches 7.. run scoreboard players set $ll sign 1

execute if score $ll sign matches 1 run function tetrablock:leaderboard/ll_1
execute if score $ll sign matches 1 run scoreboard players add $ll sign 1
execute if score $ll sign matches 3 run function tetrablock:leaderboard/ll_3
execute if score $ll sign matches 3 run scoreboard players add $ll sign 1
execute if score $ll sign matches 5 run function tetrablock:leaderboard/ll_4
execute if score $ll sign matches 5 run scoreboard players add $ll sign 1
