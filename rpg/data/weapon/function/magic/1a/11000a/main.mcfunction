##フレイム-メイン

#消費MP設定
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:book",components:{"minecraft:custom_data":{magic_lv:1a}}}]}] stat_player.Base_Consum_MP 3
#LV2
#LV3
function weapon:magic/assets/consum_cal
#魔力容量確認
function weapon:magic/assets/cap_check
function weapon:magic/assets/mp_check

##魔力容量
execute if entity @s[tag=!consum_mp_F,tag=!consum_mp_over,nbt={Inventory:[{Slot:-106b,id:"minecraft:book",components:{"minecraft:custom_data":{magic_lv:1a}}}]}] run function weapon:magic/1a/11000a/lv_1
tag @s remove used_skill
tag @s remove consum_mp_over
tag @s remove consum_mp_F