##12000-木の大剣-メインコマンド
    execute as @s[tag=attacked,tag=!set_weap_stat] at @s run function weapon:item/2_large_sword/assets/defo
##ステータス設定
    execute as @s[tag=set_weap_stat] at @s run function weapon:item/2_large_sword/12000/stat
    tag @s remove set_weap_stat
    