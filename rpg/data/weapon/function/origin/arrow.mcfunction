execute as @e[tag=Entity,dx=0] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] run tag @s add Hit_arrow
execute positioned ^ ^ ^0.25 if entity @s[distance=..2] run function weapon:origin/arrow