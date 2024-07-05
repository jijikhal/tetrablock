#as player
scoreboard players reset @s control
execute if entity @s[tag=player1] run execute as @e[tag=block1] at @s positioned ~ ~ ~-1 run function tetrablock:collision/ground_check
execute if entity @s[tag=player2] run execute as @e[tag=block2] at @s positioned ~ ~ ~-1 run function tetrablock:collision/ground_check
execute if entity @s[tag=player3] run execute as @e[tag=block3] at @s positioned ~ ~ ~-1 run function tetrablock:collision/ground_check
execute if entity @s[tag=player4] run execute as @e[tag=block4] at @s positioned ~ ~ ~-1 run function tetrablock:collision/ground_check
execute if entity @s[tag=player5] run execute as @e[tag=block5] at @s positioned ~ ~ ~-1 run function tetrablock:collision/ground_check
execute if entity @s[tag=player6] run execute as @e[tag=block6] at @s positioned ~ ~ ~-1 run function tetrablock:collision/ground_check
execute if entity @s[tag=player7] run execute as @e[tag=block7] at @s positioned ~ ~ ~-1 run function tetrablock:collision/ground_check
execute if entity @s[tag=player8] run execute as @e[tag=block8] at @s positioned ~ ~ ~-1 run function tetrablock:collision/ground_check

execute if entity @s[tag=player1] unless entity @e[tag=block1,tag=on_ground] run execute as @e[tag=block1] at @s run tp @s ~ ~ ~-1
execute if entity @s[tag=player2] unless entity @e[tag=block2,tag=on_ground] run execute as @e[tag=block2] at @s run tp @s ~ ~ ~-1
execute if entity @s[tag=player3] unless entity @e[tag=block3,tag=on_ground] run execute as @e[tag=block3] at @s run tp @s ~ ~ ~-1
execute if entity @s[tag=player4] unless entity @e[tag=block4,tag=on_ground] run execute as @e[tag=block4] at @s run tp @s ~ ~ ~-1
execute if entity @s[tag=player5] unless entity @e[tag=block5,tag=on_ground] run execute as @e[tag=block5] at @s run tp @s ~ ~ ~-1
execute if entity @s[tag=player6] unless entity @e[tag=block6,tag=on_ground] run execute as @e[tag=block6] at @s run tp @s ~ ~ ~-1
execute if entity @s[tag=player7] unless entity @e[tag=block7,tag=on_ground] run execute as @e[tag=block7] at @s run tp @s ~ ~ ~-1
execute if entity @s[tag=player8] unless entity @e[tag=block8,tag=on_ground] run execute as @e[tag=block8] at @s run tp @s ~ ~ ~-1

tag @e[tag=on_ground] remove on_ground

