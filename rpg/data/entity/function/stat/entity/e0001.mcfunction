##スポーン時実行
    data merge entity @s[nbt={PortalCooldown:2}] {DeathLootTable:""}
    attribute @s[nbt={PortalCooldown:2}] generic.max_health base set 1024
    data merge entity @s[nbt={PortalCooldown:2}] {Health:1024}
    #scoreboard players set @s[nbt={PortalCooldown:2}] mob.Attack_Cooltime 0
    scoreboard players set @s[nbt={PortalCooldown:2}] stat_entity.Max_HP 20
    scoreboard players add @s[nbt={PortalCooldown:2}] stat_entity.HP 20

    


##名前
    #data merge entity @s[scores={mob.gauge.HP_rate=100}] {CustomName:'[{"text":" ゾンビ LV.1 ","color":"white"}]',CustomNameVisible:true}

##ステータス設定
    #基礎ステータス
    scoreboard players set @s stat_entity.LV 1
    scoreboard players set @s stat_entity.AT 4
    scoreboard players set @s stat_entity.Physical_DF 0
    scoreboard players set @s stat_entity.Magic_DF 0
    #属性耐性
    scoreboard players set @s stat_entity.None_DF 0
    scoreboard players set @s stat_entity.Fire_DF 0
    scoreboard players set @s stat_entity.Water_DF 0
    scoreboard players set @s stat_entity.Ice_DF 0
    scoreboard players set @s stat_entity.Elect_DF 0
    scoreboard players set @s stat_entity.Light_DF 0
    scoreboard players set @s stat_entity.Night_DF 0
    #属性蓄積
    scoreboard players set @s[nbt={PortalCooldown:2}] system_entity.element_effect_None.EGG 0
    scoreboard players set @s[nbt={PortalCooldown:2}] system_entity.element_effect_Fire.EGG 0
    scoreboard players set @s[nbt={PortalCooldown:2}] system_entity.element_effect_Water.EGG 0
    scoreboard players set @s[nbt={PortalCooldown:2}] system_entity.element_effect_Ice.EGG 0
    scoreboard players set @s[nbt={PortalCooldown:2}] system_entity.element_effect_Elect.EGG 0
    scoreboard players set @s[nbt={PortalCooldown:2}] system_entity.element_effect_Light.EGG 0
    scoreboard players set @s[nbt={PortalCooldown:2}] system_entity.element_effect_Night.EGG 0
    scoreboard players set @s[nbt={PortalCooldown:2}] system_entity.element_effect_None.ICD 0
    scoreboard players set @s[nbt={PortalCooldown:2}] system_entity.element_effect_Fire.ICD 0
    scoreboard players set @s[nbt={PortalCooldown:2}] system_entity.element_effect_Water.ICD 0
    scoreboard players set @s[nbt={PortalCooldown:2}] system_entity.element_effect_Ice.ICD 0
    scoreboard players set @s[nbt={PortalCooldown:2}] system_entity.element_effect_Elect.ICD 0
    scoreboard players set @s[nbt={PortalCooldown:2}] system_entity.element_effect_Light.ICD 0
    scoreboard players set @s[nbt={PortalCooldown:2}] system_entity.element_effect_Night.ICD 0