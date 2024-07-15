execute as @e[tag=Entity,dx=0] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0] run tag @s add Magic_Hit
execute positioned ^ ^ ^0.25 if entity @s[distance=..1.25] run function weapon:origin/magic