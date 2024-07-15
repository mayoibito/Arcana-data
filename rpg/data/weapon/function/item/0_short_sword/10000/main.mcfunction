##10000-木の短剣-メインコマンド
    execute as @s[tag=attacked,tag=!set_weap_stat] at @s run function weapon:item/0_short_sword/assets/defo
##ステータス設定
    execute as @s[tag=set_weap_stat] at @s run function weapon:item/0_short_sword/10000/stat
    tag @s remove set_weap_stat

#TEST!!!
    