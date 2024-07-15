execute as @e[tag=Entity,dx=0] positioned ~-0.65 ~-0.65 ~-0.65 if entity @s[dx=0] run tag @s add Hit
execute positioned ^ ^ ^0.25 if entity @s[distance=..5.0] run function weapon:origin/spear