execute as @a at @s unless predicate weapon:check/have_weap run attribute @s generic.attack_damage base set 1.0
execute as @a at @s if predicate weapon:check/have_weap run attribute @s generic.attack_damage base set 10.0