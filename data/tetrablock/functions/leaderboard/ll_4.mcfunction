kill @e[tag=lead]
summon minecraft:armor_stand 64 102 -65 {Tags:["leaderboard","lead"],Invisible:1,CustomNameVisible:1,Marker:1,CustomName:'[{"text":"Most Pieces","bold":true,"color":"green"}]'}
summon minecraft:armor_stand 64 101.7 -65 {Tags:["leaderboard1","lead"],Invisible:1,CustomNameVisible:1,Marker:1,Team:"l_1"}
summon minecraft:armor_stand 64 101.4 -65 {Tags:["leaderboard2","lead"],Invisible:1,CustomNameVisible:1,Marker:1,Team:"l_2"}
summon minecraft:armor_stand 64 101.1 -65 {Tags:["leaderboard3","lead"],Invisible:1,CustomNameVisible:1,Marker:1,Team:"l_3"}
summon minecraft:armor_stand 64 100.8 -65 {Tags:["leaderboard4","lead"],Invisible:1,CustomNameVisible:1,Marker:1,Team:"l_4"}
summon minecraft:armor_stand 64 100.5 -65 {Tags:["leaderboard5","lead"],Invisible:1,CustomNameVisible:1,Marker:1,Team:"l_5"}
summon minecraft:armor_stand 64 100.2 -65 {Tags:["leaderboard6","lead"],Invisible:1,CustomNameVisible:1,Marker:1,CustomName:'[{"text":"(right-click)","color":"gray"}]'}

data modify entity @e[tag=leaderboard1,limit=1] CustomName set from block 60 98 -66 Text1
data modify entity @e[tag=leaderboard2,limit=1] CustomName set from block 60 98 -66 Text2
data modify entity @e[tag=leaderboard3,limit=1] CustomName set from block 60 98 -66 Text3
data modify entity @e[tag=leaderboard4,limit=1] CustomName set from block 60 98 -66 Text4
data modify entity @e[tag=leaderboard5,limit=1] CustomName set from block 60 97 -66 Text1
