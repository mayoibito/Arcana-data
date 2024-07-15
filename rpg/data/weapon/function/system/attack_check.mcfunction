#左クリック検知用のヴェックス召喚
    tag @a remove Have_Bow
    tag @a[nbt={SelectedItem:{id:"minecraft:bow",components:{"minecraft:custom_data":{weapon:true,weapon_type:5a}}}}] add Have_Bow
    execute as @a[tag=!Have_Bow] at @s if predicate weapon:check/have_weap run execute anchored eyes positioned ^ ^ ^ run summon minecraft:vex ~ ~-0.4 ~ {NoAI:1b,PortalCooldown:5,Silent:1b,DeathLootTable:"none",Team:"NoCollision",Tags:["LeftClick"]}
    execute as @a[tag=!Have_Bow] at @s if predicate weapon:check/have_weap run execute anchored eyes positioned ^ ^ ^1 run summon minecraft:vex ~ ~-0.4 ~ {NoAI:1b,PortalCooldown:5,Silent:1b,DeathLootTable:"none",Team:"NoCollision",Tags:["LeftClick"]}
    execute as @e[type=vex,tag=LeftClick] at @s run attribute @s generic.max_health base set 1000
    execute as @e[type=vex,tag=LeftClick] at @s run data merge entity @s {Health:1000}
    execute as @e[type=vex,tag=LeftClick] if data entity @s {PortalCooldown:0} run function weapon:system/kill
#END