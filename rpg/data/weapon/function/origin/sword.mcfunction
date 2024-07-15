execute as @e[tag=Entity,dx=0] positioned ~-0.50 ~-0.50 ~-0.50 if entity @s[dx=0] run tag @s add Hit
execute positioned ^ ^ ^0.25 if entity @s[distance=..3.5] run function weapon:origin/sword