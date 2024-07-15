function weapon:item/main
function weapon:system/main
function weapon:magic/tick
execute as @a at @s run function weapon:info_set/main
##Advancement Reset
    execute as @a at @s unless predicate weapon:check/have_weap run advancement revoke @s only weapon:player_attacked
    execute as @a at @s unless predicate weapon:check/have_weap run advancement revoke @s only weapon:player_attacked_1
    execute as @a at @s unless predicate weapon:check/have_weap run advancement revoke @s only weapon:player_attacked_2
    execute as @a at @s unless predicate weapon:check/have_weap run advancement revoke @s only weapon:player_attacked_3
    execute as @a at @s unless predicate weapon:check/have_weap run advancement revoke @s only weapon:player_attacked_4
    execute as @a at @s unless predicate weapon:check/have_weap run advancement revoke @s only weapon:player_attacked_5
    execute as @a at @s unless predicate weapon:check/have_weap run advancement revoke @s only weapon:player_attacked_6