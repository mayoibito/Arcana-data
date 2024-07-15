##18001-石の長杖-メインコマンド
    execute as @s[tag=attacked,tag=!set_weap_stat] at @s run function weapon:item/8_rod/assets/defo
##ステータス設定
    execute as @s[tag=set_weap_stat] at @s run function weapon:item/8_rod/18001/stat
    tag @s remove set_weap_stat
    