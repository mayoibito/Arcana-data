execute as @a at @s run function system:cal/lv
execute as @a at @s run function system:cal/at
execute as @a at @s run function system:cal/df
execute as @a at @s run function system:cal/hp
execute as @a at @s run function system:cal/mp
execute as @a at @s run function system:cal/crit
##HP設定
    tag @r add HP_setting_reload
    execute as @a[tag=HP_setting_reload] at @s store result storage stat_maxhp score int 1 run scoreboard players get @s stat_player.Max_HP
    execute as @a[tag=HP_setting_reload] at @s run function system:cal/hp_set with storage stat_maxhp
    tag @a remove HP_setting_reload