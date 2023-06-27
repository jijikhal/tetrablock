scoreboard players set @s did_rotate 1

execute if score @s wall_kick matches 1 run tp @s ~ ~ ~-1
execute if score @s wall_kick matches 2 run tp @s ~ ~ ~1
execute if score @s wall_kick matches 3 run tp @s ~ ~-1 ~-1
execute if score @s wall_kick matches 4 run tp @s ~ ~-1 ~1

execute if score @s wall_kick matches 5 run tp @s ~ ~1 ~-1
execute if score @s wall_kick matches 6 run tp @s ~ ~1 ~1
execute if score @s wall_kick matches 7 run tp @s ~ ~-2 ~
execute if score @s wall_kick matches 8 run tp @s ~ ~2 ~

execute if score @s wall_kick matches 9 run tp @s ~ ~-2 ~-1
execute if score @s wall_kick matches 10 run tp @s ~ ~-2 ~1
execute if score @s wall_kick matches 11 run tp @s ~ ~2 ~-1
execute if score @s wall_kick matches 12 run tp @s ~ ~2 ~1

execute if score @s wall_kick matches 13 run tp @s ~ ~ ~-2
execute if score @s wall_kick matches 14 run tp @s ~ ~ ~2
execute if score @s wall_kick matches 15 run tp @s ~ ~-1 ~
execute if score @s wall_kick matches 16 run tp @s ~ ~1 ~

execute as @s[tag=r1] run tag @s add r5
execute as @s[tag=r1] run tag @s remove r1

execute as @s[tag=r2] run tag @s add r1
execute as @s[tag=r2] run tag @s remove r2

execute as @s[tag=r3] run tag @s add r2
execute as @s[tag=r3] run tag @s remove r3

execute as @s[tag=r4] run tag @s add r3
execute as @s[tag=r4] run tag @s remove r4

execute as @s[tag=r5] run tag @s add r4
execute as @s[tag=r5] run tag @s remove r5

execute as @s[tag=I,tag=r4] run tag @s add r2
execute as @s[tag=I,tag=r4] run tag @s remove r4

execute as @s[tag=O,tag=r4] run tag @s add r1
execute as @s[tag=O,tag=r4] run tag @s remove r4

execute as @s[tag=S,tag=r4] run tag @s add r2
execute as @s[tag=S,tag=r4] run tag @s remove r4

execute as @s[tag=Z,tag=r4] run tag @s add r2
execute as @s[tag=Z,tag=r4] run tag @s remove r4
scoreboard players reset @s wall_kick