#表示位置ランダム（XZ9パターン、Y5パターン）
execute as @e[tag=Damage_display,tag=!Damage_display_added] at @s store result score @s system.random_2 run random value 1..9
execute as @e[tag=Damage_display,tag=!Damage_display_added] at @s store result score @s system.random_3 run random value 1..9
execute as @e[tag=Damage_display,tag=!Damage_display_added] at @s store result score @s system.random_4 run random value 1..5
#tpで位置をずらす(X)
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_2=1}] at @s run tp @s ~0.8 ~ ~
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_2=2}] at @s run tp @s ~0.6 ~ ~
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_2=3}] at @s run tp @s ~0.4 ~ ~
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_2=4}] at @s run tp @s ~0.2 ~ ~
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_2=5}] at @s run tp @s ~ ~ ~
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_2=6}] at @s run tp @s ~-0.2 ~ ~
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_2=7}] at @s run tp @s ~-0.4 ~ ~
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_2=8}] at @s run tp @s ~-0.6 ~ ~
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_2=9}] at @s run tp @s ~-0.8 ~ ~
#tpで位置をずらす(Z)
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_3=1}] at @s run tp @s ~ ~ ~0.8
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_3=2}] at @s run tp @s ~ ~ ~0.6
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_3=3}] at @s run tp @s ~ ~ ~0.4
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_3=4}] at @s run tp @s ~ ~ ~0.2
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_3=5}] at @s run tp @s ~ ~ ~
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_3=6}] at @s run tp @s ~ ~ ~-0.2
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_3=7}] at @s run tp @s ~ ~ ~-0.4
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_3=8}] at @s run tp @s ~ ~ ~-0.6
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_3=9}] at @s run tp @s ~ ~ ~-0.8
#tpで位置をずらす(Y)
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_4=1}] at @s run tp @s ~ ~0.5 ~
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_4=2}] at @s run tp @s ~ ~0.25 ~
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_4=3}] at @s run tp @s ~ ~ ~
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_4=4}] at @s run tp @s ~ ~-0.25 ~
execute as @e[tag=Damage_display,tag=!Damage_display_added,scores={system.random_4=5}] at @s run tp @s ~ ~-0.5 ~
#タグ付与
tag @e[tag=Damage_display] add Damage_display_added