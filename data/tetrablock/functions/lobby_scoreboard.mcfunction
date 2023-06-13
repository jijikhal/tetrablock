scoreboard players reset * lobby

scoreboard players set §r§r§r§r§r§r lobby 6

scoreboard players set §lGamemode: lobby 5
execute if score $mode sign matches 1 run scoreboard players set §eHighscore lobby 4
execute if score $mode sign matches 2 run scoreboard players set §cBattle lobby 4
execute if score $mode sign matches 3 run scoreboard players set §bLines lobby 4
execute if score $mode sign matches 3 run team join most §bLines
execute if score $mode sign matches 3 run team modify most prefix {"text": "Most ","color": "aqua"}
execute if score $mode sign matches 4 run scoreboard players set §aPieces lobby 4
execute if score $mode sign matches 4 run team join most §aPieces
execute if score $mode sign matches 4 run team modify most prefix {"text": "Most ","color": "green"}

scoreboard players set §r§r§r§r§r§r lobby 3

scoreboard players set §llevel: lobby 2
team join starting_at_lvl §llevel:
team modify starting_at_lvl prefix {"text": "Starting at ","bold": true}
execute if score $start_lvl sign matches 20 run scoreboard players set §620 lobby 1
execute if score $start_lvl sign matches 19 run scoreboard players set §619 lobby 1
execute if score $start_lvl sign matches 18 run scoreboard players set §618 lobby 1
execute if score $start_lvl sign matches 17 run scoreboard players set §617 lobby 1
execute if score $start_lvl sign matches 16 run scoreboard players set §616 lobby 1
execute if score $start_lvl sign matches 15 run scoreboard players set §615 lobby 1
execute if score $start_lvl sign matches 14 run scoreboard players set §614 lobby 1
execute if score $start_lvl sign matches 13 run scoreboard players set §613 lobby 1
execute if score $start_lvl sign matches 12 run scoreboard players set §612 lobby 1
execute if score $start_lvl sign matches 11 run scoreboard players set §611 lobby 1
execute if score $start_lvl sign matches 10 run scoreboard players set §610 lobby 1
execute if score $start_lvl sign matches 9 run scoreboard players set §69 lobby 1
execute if score $start_lvl sign matches 8 run scoreboard players set §68 lobby 1
execute if score $start_lvl sign matches 7 run scoreboard players set §67 lobby 1
execute if score $start_lvl sign matches 6 run scoreboard players set §66 lobby 1
execute if score $start_lvl sign matches 5 run scoreboard players set §65 lobby 1
execute if score $start_lvl sign matches 4 run scoreboard players set §64 lobby 1
execute if score $start_lvl sign matches 3 run scoreboard players set §63 lobby 1
execute if score $start_lvl sign matches 2 run scoreboard players set §62 lobby 1
execute if score $start_lvl sign matches 1 run scoreboard players set §61 lobby 1