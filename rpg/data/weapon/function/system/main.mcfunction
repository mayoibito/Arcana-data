function weapon:system/attack_check
execute as @a at @s if predicate weapon:check/have_rc run tag @s add have_rc
execute as @a at @s if predicate weapon:check/have_rc2 run tag @s add have_rc
execute as @a[tag=have_rc] at @s run function weapon:system/right_click
tag @a remove have_rc