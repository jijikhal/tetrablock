#as at player
scoreboard players reset @s drop_timer
scoreboard players reset @s down
execute if entity @s[tag=player1] run execute as @e[tag=block1] at @s positioned ~ ~-1 ~ run function tetrablock:collision/ground_check
execute if entity @s[tag=player2] run execute as @e[tag=block2] at @s positioned ~ ~-1 ~ run function tetrablock:collision/ground_check
execute if entity @s[tag=player3] run execute as @e[tag=block3] at @s positioned ~ ~-1 ~ run function tetrablock:collision/ground_check
execute if entity @s[tag=player4] run execute as @e[tag=block4] at @s positioned ~ ~-1 ~ run function tetrablock:collision/ground_check
execute if entity @s[tag=player5] run execute as @e[tag=block5] at @s positioned ~ ~-1 ~ run function tetrablock:collision/ground_check
execute if entity @s[tag=player6] run execute as @e[tag=block6] at @s positioned ~ ~-1 ~ run function tetrablock:collision/ground_check
execute if entity @s[tag=player7] run execute as @e[tag=block7] at @s positioned ~ ~-1 ~ run function tetrablock:collision/ground_check
execute if entity @s[tag=player8] run execute as @e[tag=block8] at @s positioned ~ ~-1 ~ run function tetrablock:collision/ground_check

execute if entity @s[tag=player1] unless entity @e[tag=block1,tag=on_ground] run execute as @e[tag=block1] at @s run tp @s ~ ~-1 ~
execute if entity @s[tag=player2] unless entity @e[tag=block2,tag=on_ground] run execute as @e[tag=block2] at @s run tp @s ~ ~-1 ~
execute if entity @s[tag=player3] unless entity @e[tag=block3,tag=on_ground] run execute as @e[tag=block3] at @s run tp @s ~ ~-1 ~
execute if entity @s[tag=player4] unless entity @e[tag=block4,tag=on_ground] run execute as @e[tag=block4] at @s run tp @s ~ ~-1 ~
execute if entity @s[tag=player5] unless entity @e[tag=block5,tag=on_ground] run execute as @e[tag=block5] at @s run tp @s ~ ~-1 ~
execute if entity @s[tag=player6] unless entity @e[tag=block6,tag=on_ground] run execute as @e[tag=block6] at @s run tp @s ~ ~-1 ~
execute if entity @s[tag=player7] unless entity @e[tag=block7,tag=on_ground] run execute as @e[tag=block7] at @s run tp @s ~ ~-1 ~
execute if entity @s[tag=player8] unless entity @e[tag=block8,tag=on_ground] run execute as @e[tag=block8] at @s run tp @s ~ ~-1 ~

execute if entity @s[tag=player1] if entity @e[tag=block1,tag=on_ground] run execute as @e[tag=block1] at @s run function tetrablock:game/kill_piece
execute if entity @s[tag=player2] if entity @e[tag=block2,tag=on_ground] run execute as @e[tag=block2] at @s run function tetrablock:game/kill_piece
execute if entity @s[tag=player3] if entity @e[tag=block3,tag=on_ground] run execute as @e[tag=block3] at @s run function tetrablock:game/kill_piece
execute if entity @s[tag=player4] if entity @e[tag=block4,tag=on_ground] run execute as @e[tag=block4] at @s run function tetrablock:game/kill_piece
execute if entity @s[tag=player5] if entity @e[tag=block5,tag=on_ground] run execute as @e[tag=block5] at @s run function tetrablock:game/kill_piece
execute if entity @s[tag=player6] if entity @e[tag=block6,tag=on_ground] run execute as @e[tag=block6] at @s run function tetrablock:game/kill_piece
execute if entity @s[tag=player7] if entity @e[tag=block7,tag=on_ground] run execute as @e[tag=block7] at @s run function tetrablock:game/kill_piece
execute if entity @s[tag=player8] if entity @e[tag=block8,tag=on_ground] run execute as @e[tag=block8] at @s run function tetrablock:game/kill_piece

tag @e[tag=on_ground] remove on_ground
tag @s add loser
execute at @e[tag=spawn,limit=1,sort=nearest] unless block ~ ~-2 ~2 #tetrablock:collision unless block ~ ~-2 ~1 #tetrablock:collision unless block ~ ~-2 ~ #tetrablock:collision unless block ~ ~-2 ~-1 #tetrablock:collision unless block ~ ~-3 ~1 #tetrablock:collision unless block ~ ~-3 ~ #tetrablock:collision unless block ~ ~-3 ~-1 #tetrablock:collision run tag @s remove loser

execute unless score @s hard_drop matches 1 unless entity @s[tag=loser] if entity @s[tag=player1] unless entity @e[tag=block1] run function tetrablock:game/choose_spawn
execute unless score @s hard_drop matches 1 unless entity @s[tag=loser] if entity @s[tag=player2] unless entity @e[tag=block2] run function tetrablock:game/choose_spawn
execute unless score @s hard_drop matches 1 unless entity @s[tag=loser] if entity @s[tag=player3] unless entity @e[tag=block3] run function tetrablock:game/choose_spawn
execute unless score @s hard_drop matches 1 unless entity @s[tag=loser] if entity @s[tag=player4] unless entity @e[tag=block4] run function tetrablock:game/choose_spawn
execute unless score @s hard_drop matches 1 unless entity @s[tag=loser] if entity @s[tag=player5] unless entity @e[tag=block5] run function tetrablock:game/choose_spawn
execute unless score @s hard_drop matches 1 unless entity @s[tag=loser] if entity @s[tag=player6] unless entity @e[tag=block6] run function tetrablock:game/choose_spawn
execute unless score @s hard_drop matches 1 unless entity @s[tag=loser] if entity @s[tag=player7] unless entity @e[tag=block7] run function tetrablock:game/choose_spawn
execute unless score @s hard_drop matches 1 unless entity @s[tag=loser] if entity @s[tag=player8] unless entity @e[tag=block8] run function tetrablock:game/choose_spawn


