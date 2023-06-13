tag @e[tag=on_clock] remove on_clock

execute as @s[tag=T,tag=r4] if block ~ ~1 ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=T,tag=r4] if block ~ ~ ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=T,tag=r4] if block ~ ~ ~-1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=T,tag=r4] if block ~ ~ ~1 #tetrablock:collision run tag @s add on_clock

execute as @s[tag=T,tag=r1] if block ~ ~ ~-1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=T,tag=r1] if block ~ ~ ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=T,tag=r1] if block ~ ~-1 ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=T,tag=r1] if block ~ ~1 ~ #tetrablock:collision run tag @s add on_clock

execute as @s[tag=T,tag=r2] if block ~ ~ ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=T,tag=r2] if block ~ ~ ~1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=T,tag=r2] if block ~ ~ ~-1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=T,tag=r2] if block ~ ~-1 ~ #tetrablock:collision run tag @s add on_clock

execute as @s[tag=T,tag=r3] if block ~ ~ ~1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=T,tag=r3] if block ~ ~ ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=T,tag=r3] if block ~ ~1 ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=T,tag=r3] if block ~ ~-1 ~ #tetrablock:collision run tag @s add on_clock

execute as @s[tag=O,tag=r4] if block ~ ~ ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=O,tag=r4] if block ~ ~-1 ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=O,tag=r4] if block ~ ~ ~1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=O,tag=r4] if block ~ ~-1 ~1 #tetrablock:collision run tag @s add on_clock

execute as @s[tag=I,tag=r2] if block ~ ~ ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=I,tag=r2] if block ~ ~ ~-1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=I,tag=r2] if block ~ ~ ~1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=I,tag=r2] if block ~ ~ ~2 #tetrablock:collision run tag @s add on_clock

execute as @s[tag=I,tag=r1] if block ~ ~-2 ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=I,tag=r1] if block ~ ~-1 ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=I,tag=r1] if block ~ ~ ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=I,tag=r1] if block ~ ~1 ~ #tetrablock:collision run tag @s add on_clock

execute as @s[tag=S,tag=r2] if block ~ ~ ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=S,tag=r2] if block ~ ~-1 ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=S,tag=r2] if block ~ ~-1 ~1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=S,tag=r2] if block ~ ~ ~-1 #tetrablock:collision run tag @s add on_clock

execute as @s[tag=S,tag=r1] if block ~ ~ ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=S,tag=r1] if block ~ ~1 ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=S,tag=r1] if block ~ ~ ~-1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=S,tag=r1] if block ~ ~-1 ~-1 #tetrablock:collision run tag @s add on_clock

execute as @s[tag=Z,tag=r2] if block ~ ~ ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=Z,tag=r2] if block ~ ~-1 ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=Z,tag=r2] if block ~ ~-1 ~-1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=Z,tag=r2] if block ~ ~ ~1 #tetrablock:collision run tag @s add on_clock

execute as @s[tag=Z,tag=r1] if block ~ ~ ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=Z,tag=r1] if block ~ ~1 ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=Z,tag=r1] if block ~ ~ ~1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=Z,tag=r1] if block ~ ~-1 ~1 #tetrablock:collision run tag @s add on_clock

execute as @s[tag=L,tag=r4] if block ~ ~1 ~-1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=L,tag=r4] if block ~ ~ ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=L,tag=r4] if block ~ ~ ~-1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=L,tag=r4] if block ~ ~ ~1 #tetrablock:collision run tag @s add on_clock

execute as @s[tag=L,tag=r1] if block ~ ~ ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=L,tag=r1] if block ~ ~1 ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=L,tag=r1] if block ~ ~-1 ~-1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=L,tag=r1] if block ~ ~-1 ~ #tetrablock:collision run tag @s add on_clock

execute as @s[tag=L,tag=r2] if block ~ ~ ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=L,tag=r2] if block ~ ~ ~-1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=L,tag=r2] if block ~ ~ ~1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=L,tag=r2] if block ~ ~-1 ~1 #tetrablock:collision run tag @s add on_clock

execute as @s[tag=L,tag=r3] if block ~ ~ ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=L,tag=r3] if block ~ ~1 ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=L,tag=r3] if block ~ ~1 ~1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=L,tag=r3] if block ~ ~-1 ~ #tetrablock:collision run tag @s add on_clock

execute as @s[tag=J,tag=r4] if block ~ ~1 ~1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=J,tag=r4] if block ~ ~ ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=J,tag=r4] if block ~ ~ ~1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=J,tag=r4] if block ~ ~ ~-1 #tetrablock:collision run tag @s add on_clock

execute as @s[tag=J,tag=r3] if block ~ ~ ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=J,tag=r3] if block ~ ~1 ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=J,tag=r3] if block ~ ~-1 ~1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=J,tag=r3] if block ~ ~-1 ~ #tetrablock:collision run tag @s add on_clock

execute as @s[tag=J,tag=r2] if block ~ ~ ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=J,tag=r2] if block ~ ~ ~1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=J,tag=r2] if block ~ ~ ~-1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=J,tag=r2] if block ~ ~-1 ~-1 #tetrablock:collision run tag @s add on_clock

execute as @s[tag=J,tag=r1] if block ~ ~ ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=J,tag=r1] if block ~ ~1 ~ #tetrablock:collision run tag @s add on_clock
execute as @s[tag=J,tag=r1] if block ~ ~1 ~-1 #tetrablock:collision run tag @s add on_clock
execute as @s[tag=J,tag=r1] if block ~ ~-1 ~ #tetrablock:collision run tag @s add on_clock