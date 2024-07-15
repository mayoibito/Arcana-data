##15001-石の弓-メインコマンド
    execute as @s[tag=attacked_bow,tag=!set_weap_stat] at @s run function weapon:item/5_bow/assets/defo
##ステータス設定
    execute as @s[tag=set_weap_stat] at @s run function weapon:item/5_bow/15001/stat
    tag @s remove set_weap_stat
    