scoreboard players remove $music_timer sign 1

execute if score $music_timer sign matches ..0 store result score $music_random sign run loot spawn ~ ~ ~ loot tetrablock:music

execute if score $music_timer sign matches ..0 if score $music_random sign matches 1 as @a[team=player] at @s run playsound music_disc.pigstep voice @s ~ ~ ~ 10000
execute if score $music_timer sign matches ..0 if score $music_random sign matches 1 run scoreboard players set $music_timer sign 2960

execute if score $music_timer sign matches ..0 if score $music_random sign matches 2 as @a[team=player] at @s run playsound music_disc.cat voice @s ~ ~ ~ 10000
execute if score $music_timer sign matches ..0 if score $music_random sign matches 2 run scoreboard players set $music_timer sign 3700

execute if score $music_timer sign matches ..0 if score $music_random sign matches 3 as @a[team=player] at @s run playsound music_disc.blocks voice @s ~ ~ ~ 10000
execute if score $music_timer sign matches ..0 if score $music_random sign matches 3 run scoreboard players set $music_timer sign 6900

execute if score $music_timer sign matches ..0 if score $music_random sign matches 4 as @a[team=player] at @s run playsound music_disc.chirp voice @s ~ ~ ~ 10000
execute if score $music_timer sign matches ..0 if score $music_random sign matches 4 run scoreboard players set $music_timer sign 3700

execute if score $music_timer sign matches ..0 if score $music_random sign matches 5 as @a[team=player] at @s run playsound music_disc.far voice @s ~ ~ ~ 10000
execute if score $music_timer sign matches ..0 if score $music_random sign matches 5 run scoreboard players set $music_timer sign 3480

execute if score $music_timer sign matches ..0 if score $music_random sign matches 6 as @a[team=player] at @s run playsound music_disc.mall voice @s ~ ~ ~ 10000
execute if score $music_timer sign matches ..0 if score $music_random sign matches 6 run scoreboard players set $music_timer sign 3940

execute if score $music_timer sign matches ..0 if score $music_random sign matches 7 as @a[team=player] at @s run playsound music_disc.mellohi voice @s ~ ~ ~ 10000
execute if score $music_timer sign matches ..0 if score $music_random sign matches 7 run scoreboard players set $music_timer sign 1920

execute if score $music_timer sign matches ..0 if score $music_random sign matches 8 as @a[team=player] at @s run playsound music_disc.stal voice @s ~ ~ ~ 10000
execute if score $music_timer sign matches ..0 if score $music_random sign matches 8 run scoreboard players set $music_timer sign 3000

execute if score $music_timer sign matches ..0 if score $music_random sign matches 9 as @a[team=player] at @s run playsound music_disc.strad voice @s ~ ~ ~ 10000
execute if score $music_timer sign matches ..0 if score $music_random sign matches 9 run scoreboard players set $music_timer sign 3760

execute if score $music_timer sign matches ..0 if score $music_random sign matches 10 as @a[team=player] at @s run playsound music_disc.ward voice @s ~ ~ ~ 10000
execute if score $music_timer sign matches ..0 if score $music_random sign matches 10 run scoreboard players set $music_timer sign 5020

execute if score $music_timer sign matches ..0 if score $music_random sign matches 11 as @a[team=player] at @s run playsound music_disc.wait voice @s ~ ~ ~ 10000
execute if score $music_timer sign matches ..0 if score $music_random sign matches 11 run scoreboard players set $music_timer sign 4620

execute if score $music_timer sign matches ..0 if score $music_random sign matches 12 as @a[team=player] at @s run playsound music_disc.otherside voice @s ~ ~ ~ 10000
execute if score $music_timer sign matches ..0 if score $music_random sign matches 12 run scoreboard players set $music_timer sign 3900
