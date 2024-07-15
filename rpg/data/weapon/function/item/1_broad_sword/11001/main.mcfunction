##11001-石の片手剣-メインコマンド
    execute as @s[tag=attacked,tag=!set_weap_stat] at @s run function weapon:item/1_broad_sword/assets/defo
##ステータス設定
    execute as @s[tag=set_weap_stat] at @s run function weapon:item/1_broad_sword/11001/stat
    tag @s remove set_weap_stat
    