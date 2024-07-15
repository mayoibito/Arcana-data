##右クリック検知
    #ステータスチェッカー
    execute if score @s Right_Click matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{debug_id:1a}}}}] run function system:cal/check
    execute if score @s Right_Click matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{debug_id:1a}}}}] run scoreboard players set @s Right_Click 0
    execute if score @s Right_Click matches 1.. if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{debug_id:1a}}}]}] run function system:cal/check
    execute if score @s Right_Click matches 1.. if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{debug_id:1a}}}]}] run scoreboard players set @s Right_Click 0
    #武器
    execute if score @s Right_Click matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{weapon:true}}}}] run function weapon:system/rc_weapon
##エラー
    tellraw @s[tag=c_test,scores={Right_Click=1..}] [{"text":"[エラー] 右クリック検知の使用先が指定されていません","color":"#ff0000"}]
    scoreboard players set @s Right_Click 0