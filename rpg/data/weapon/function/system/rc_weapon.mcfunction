##武器-右クリック検知
    #短剣
    execute if score @s Right_Click matches 1.. if predicate weapon:check/have_weap_0 run tag @s add used_skill
    execute if score @s Right_Click matches 1.. if predicate weapon:check/have_weap_0 run scoreboard players set @s Right_Click 0
    #片手剣
    execute if score @s Right_Click matches 1.. if predicate weapon:check/have_weap_1 run tag @s add used_skill
    execute if score @s Right_Click matches 1.. if predicate weapon:check/have_weap_1 run scoreboard players set @s Right_Click 0
    #大剣
    execute if score @s Right_Click matches 1.. if predicate weapon:check/have_weap_2 run tag @s add used_skill
    execute if score @s Right_Click matches 1.. if predicate weapon:check/have_weap_2 run scoreboard players set @s Right_Click 0
    #槍
    execute if score @s Right_Click matches 1.. if predicate weapon:check/have_weap_3 run tag @s add used_skill
    execute if score @s Right_Click matches 1.. if predicate weapon:check/have_weap_3 run scoreboard players set @s Right_Click 0
    #その他
    execute if score @s Right_Click matches 1.. if predicate weapon:check/have_weap_4 run tag @s add used_skill
    execute if score @s Right_Click matches 1.. if predicate weapon:check/have_weap_4 run scoreboard players set @s Right_Click 0
    #弓
    execute if score @s Right_Click matches 1.. if predicate weapon:check/have_weap_5 run tag @s add used_skill
    execute if score @s Right_Click matches 1.. if predicate weapon:check/have_weap_5 run scoreboard players set @s Right_Click 0
    #ボウガン
    execute if score @s Right_Click matches 1.. if predicate weapon:check/have_weap_6 run tag @s add used_skill
    execute if score @s Right_Click matches 1.. if predicate weapon:check/have_weap_6 run scoreboard players set @s Right_Click 0
    #杖
    execute if score @s Right_Click matches 1.. if predicate weapon:check/have_weap_7 run tag @s add used_skill
    execute if score @s Right_Click matches 1.. if predicate weapon:check/have_weap_7 run scoreboard players set @s Right_Click 0
    #長杖
    execute if score @s Right_Click matches 1.. if predicate weapon:check/have_weap_8 run tag @s add used_skill
    execute if score @s Right_Click matches 1.. if predicate weapon:check/have_weap_8 run function weapon:skill/single/8a
    execute if score @s Right_Click matches 1.. if predicate weapon:check/have_weap_8 run scoreboard players set @s Right_Click 0

##エラー
    tellraw @s[tag=used_skill] [{"text":"[エラー] スキルコマンド実行先が存在しません","color":"#ff0000"}]
    tag @s remove used_skill