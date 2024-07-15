##フレイムⅠ

##ダメージ計算
    scoreboard players operation @s cal.num = @s stat_player.Final_AT_Max
    #属性特攻計算
    scoreboard players operation @s cal.num *= @s stat_player.Final_Fire_Break
    scoreboard players set $100 cal.num 100
    scoreboard players operation @s cal.num /= $100 cal.num
    #会心計算
    function weapon:item/8_rod/assets/crit
    execute as @s[tag=Attack_Crit] at @s run scoreboard players operation @s cal.num *= @s stat_player.Final_Crit_Damage
    execute as @s[tag=Attack_Crit] at @s run scoreboard players set $0 cal.num 0
    execute as @s[tag=Attack_Crit] at @s run scoreboard players set $100 cal.num 100
    execute as @s[tag=Attack_Crit] at @s run scoreboard players operation @s cal.num /= $100 cal.num
##返り
    tellraw @s[tag=c_test,tag=!Attack_Crit] [{"text":"[\uE008フレイムⅠ] 魔法火属性攻撃=> "},{"score":{"name":"@s","objective":"cal.num"}}]
    #会心
    tellraw @s[tag=c_test,tag=Attack_Crit] [{"text":"[\uE008フレイムⅠ] 魔法火属性攻撃-Crit!!=> "},{"score":{"name":"@s","objective":"cal.num"}}]
    #タグ削除
    tag @s remove Attack_Crit
##召喚
    summon armor_stand ^ ^ ^-0.1 {Tags:["magic","mgnum_11000","mglv_1"],NoGravity:1b,PortalCooldown:2,Marker:1b,Invisible:1b}
    execute as @e[limit=1,sort=nearest,tag=mgnum_11000,nbt={PortalCooldown:2}] at @s run tp @s ~ ~ ~ facing entity @p[tag=used_skill,limit=1,sort=nearest]
    scoreboard players operation @e[limit=1,sort=nearest,tag=mgnum_11000,nbt={PortalCooldown:2}] stat_armor.damage = @s cal.num
    scoreboard players operation @e[limit=1,sort=nearest,tag=mgnum_11000,nbt={PortalCooldown:2}] stat_armor.move_count = $0 cal.num
##MP消費
    scoreboard players operation @s stat_player.MP -= @s stat_player.Final_Consum_MP
##サウンド
    playsound entity.blaze.shoot voice @a ~ ~1 ~ 1 1.25 0
#END