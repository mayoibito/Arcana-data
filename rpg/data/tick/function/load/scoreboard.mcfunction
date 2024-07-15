##スコアボード設定

##LVをリストに表示
    scoreboard objectives setdisplay list stat_player.LV
##計算用仮スコアボード
    scoreboard objectives add cal.num dummy
    scoreboard objectives add cal.num_2 dummy
    scoreboard objectives add cal.num_3 dummy
##プレイヤーステータス
#----------------------------------------------------------------------------------
    #基本ステータス
    #HP
    scoreboard objectives add stat_player.HP health
    scoreboard objectives add stat_player.Max_HP dummy
    #MP
    scoreboard objectives add stat_player.MP dummy
    scoreboard objectives add stat_player.Max_MP dummy
    #職業
    scoreboard objectives add stat_player.Job dummy
    #LVと熟練度とXP
    scoreboard objectives add stat_player.XP dummy
    scoreboard objectives add stat_player.Req_XP dummy
    scoreboard objectives add stat_player.LV dummy
    scoreboard objectives add stat_player.Job_XP dummy
    scoreboard objectives add stat_player.Job_Req_XP dummy
    scoreboard objectives add stat_player.Job_LV dummy
    ##AT(筋力＆技量＆知力)
    #基礎値
    scoreboard objectives add stat_player.Base_AT dummy
    scoreboard objectives add stat_player.Base_SK dummy
    scoreboard objectives add stat_player.Base_ITL dummy
    #武器
    scoreboard objectives add stat_player.Weapon_AT dummy
    scoreboard objectives add stat_player.Weapon_SK dummy
    scoreboard objectives add stat_player.Weapon_ITL dummy
    #最終値
    scoreboard objectives add stat_player.Final_AT dummy
    scoreboard objectives add stat_player.Final_SK dummy
    scoreboard objectives add stat_player.Final_ITL dummy
    #最大値
    scoreboard objectives add stat_player.Final_AT_Max dummy
    ##DF
    scoreboard objectives add stat_player.Base_Physical_DF dummy
    scoreboard objectives add stat_player.Final_Physical_DF dummy
    scoreboard objectives add stat_player.Base_Magic_DF dummy
    scoreboard objectives add stat_player.Final_Magic_DF dummy
    #MP-自然回復速度
    scoreboard objectives add stat_player.Base_Regene_MP dummy
    scoreboard objectives add stat_player.Final_Regene_MP dummy
    #MP-消費量
    scoreboard objectives add stat_player.Base_Consum_MP dummy
    scoreboard objectives add stat_player.Final_Consum_MP dummy
    #MP-消費量軽減
    scoreboard objectives add stat_player.Base_Cover_MP dummy
    scoreboard objectives add stat_player.Final_Cover_MP dummy
    #MP-魔力容量
    scoreboard objectives add stat_player.Base_MP_Cap dummy
    scoreboard objectives add stat_player.Weapon_MP_Cap dummy
    scoreboard objectives add stat_player.Final_MP_Cap dummy

    #速度
    scoreboard objectives add stat_player.Base_Speed dummy
    scoreboard objectives add stat_player.Final_Speed dummy
    #攻撃速度
    scoreboard objectives add stat_player.Weapon_AT_Speed dummy
    #会心率
    scoreboard objectives add stat_player.Base_Crit_Rate dummy
    scoreboard objectives add stat_player.Weapon_Crit_Rate dummy
    scoreboard objectives add stat_player.Final_Crit_Rate dummy
    #会心ダメージ
    scoreboard objectives add stat_player.Base_Crit_Damage dummy
    scoreboard objectives add stat_player.Weapon_Crit_Damage dummy
    scoreboard objectives add stat_player.Final_Crit_Damage dummy

#----------------------------------------------------------------------------------
    #属性特攻ステータス
    #攻撃属性
    scoreboard objectives add stat_player.Attribute dummy
    #無属性特攻
    scoreboard objectives add stat_player.Base_None_Break dummy
    scoreboard objectives add stat_player.Final_None_Break dummy
    #火属性特攻
    scoreboard objectives add stat_player.Base_Fire_Break dummy
    scoreboard objectives add stat_player.Final_Fire_Break dummy
    #水属性特攻
    scoreboard objectives add stat_player.Base_Water_Break dummy
    scoreboard objectives add stat_player.Final_Water_Break dummy
    #氷属性特攻
    scoreboard objectives add stat_player.Base_Ice_Break dummy
    scoreboard objectives add stat_player.Final_Ice_Break dummy
    #雷属性特攻
    scoreboard objectives add stat_player.Base_Elect_Break dummy
    scoreboard objectives add stat_player.Final_Elect_Break dummy
    #光属性特攻
    scoreboard objectives add stat_player.Base_Light_Break dummy
    scoreboard objectives add stat_player.Final_Light_Break dummy
    #闇属性特攻
    scoreboard objectives add stat_player.Base_Night_Break dummy
    scoreboard objectives add stat_player.Final_Night_Break dummy

#----------------------------------------------------------------------------------
    #属性耐性ステータス
    #無属性耐性
    scoreboard objectives add stat_player.Base_None_DF dummy
    scoreboard objectives add stat_player.Final_None_DF dummy
    #火属性耐性
    scoreboard objectives add stat_player.Base_Fire_DF dummy
    scoreboard objectives add stat_player.Final_Fire_DF dummy
    #水属性耐性
    scoreboard objectives add stat_player.Base_Water_DF dummy
    scoreboard objectives add stat_player.Final_Water_DF dummy
    #氷属性耐性
    scoreboard objectives add stat_player.Base_Ice_DF dummy
    scoreboard objectives add stat_player.Final_Ice_DF dummy
    #雷属性耐性
    scoreboard objectives add stat_player.Base_Elect_DF dummy
    scoreboard objectives add stat_player.Final_Elect_DF dummy
    #光属性耐性
    scoreboard objectives add stat_player.Base_Light_DF dummy
    scoreboard objectives add stat_player.Final_Light_DF dummy
    #闇属性耐性
    scoreboard objectives add stat_player.Base_Night_DF dummy
    scoreboard objectives add stat_player.Final_Night_DF dummy

#----------------------------------------------------------------------------------

##プレイヤー/敵 被ダメージ計算
    #物理無属性
    scoreboard objectives add cal.Damage_In_Ph_None dummy
    scoreboard objectives add cal.Damage_Out_Ph_None dummy
    #物理火属性
    scoreboard objectives add cal.Damage_In_Ph_Fire dummy
    scoreboard objectives add cal.Damage_Out_Ph_Fire dummy
    #物理水属性
    scoreboard objectives add cal.Damage_In_Ph_Water dummy
    scoreboard objectives add cal.Damage_Out_Ph_Water dummy
    #物理氷属性
    scoreboard objectives add cal.Damage_In_Ph_Ice dummy
    scoreboard objectives add cal.Damage_Out_Ph_Ice dummy
    #物理雷属性
    scoreboard objectives add cal.Damage_In_Ph_Elect dummy
    scoreboard objectives add cal.Damage_Out_Ph_Elect dummy
    #物理光属性
    scoreboard objectives add cal.Damage_In_Ph_Light dummy
    scoreboard objectives add cal.Damage_Out_Ph_Light dummy
    #物理闇属性
    scoreboard objectives add cal.Damage_In_Ph_Night dummy
    scoreboard objectives add cal.Damage_Out_Ph_Night dummy
#----------------------------------------------------------------------
    #魔法無属性
    scoreboard objectives add cal.Damage_In_Mg_None dummy
    scoreboard objectives add cal.Damage_Out_Mg_None dummy
    #魔法火属性
    scoreboard objectives add cal.Damage_In_Mg_Fire dummy
    scoreboard objectives add cal.Damage_Out_Mg_Fire dummy
    #魔法水属性
    scoreboard objectives add cal.Damage_In_Mg_Water dummy
    scoreboard objectives add cal.Damage_Out_Mg_Water dummy
    #魔法氷属性
    scoreboard objectives add cal.Damage_In_Mg_Ice dummy
    scoreboard objectives add cal.Damage_Out_Mg_Ice dummy
    #魔法雷属性
    scoreboard objectives add cal.Damage_In_Mg_Elect dummy
    scoreboard objectives add cal.Damage_Out_Mg_Elect dummy
    #魔法光属性
    scoreboard objectives add cal.Damage_In_Mg_Light dummy
    scoreboard objectives add cal.Damage_Out_Mg_Light dummy
    #魔法闇属性
    scoreboard objectives add cal.Damage_In_Mg_Night dummy
    scoreboard objectives add cal.Damage_Out_Mg_Night dummy

#----------------------------------------------------------------------------------

##UI関連
    #MPゲージ関連
    scoreboard objectives add XP_Levels dummy
    scoreboard objectives add XP_Points dummy
    scoreboard objectives add XP_Diff dummy
    scoreboard objectives add XPBar dummy
    scoreboard players set #1000 XPBar 1000
    scoreboard players set #6 XPBar 6
    #Actionbar関連
    scoreboard objectives add stat.Health_Mem_1 dummy
    scoreboard objectives add stat.Health_Cal dummy

#----------------------------------------------------------------------------------

##システム関連
    #MP自然回復タイマー
    scoreboard objectives add stat_player.MP_regene_Timer dummy
    #右クリック検知
    scoreboard objectives add Right_Click minecraft.used:minecraft.carrot_on_a_stick
    #弓関連スコア
    scoreboard objectives add weapon.used_bow used:bow
    scoreboard objectives add weapon.used_bow_time dummy
    scoreboard objectives add weapon.used_bow_now dummy
    scoreboard objectives add weapon.used_bow_now_time_check dummy

#----------------------------------------------------------------------------------

##敵ステータス
    #LV
    scoreboard objectives add stat_entity.LV dummy
    #HP
    scoreboard objectives add stat_entity.HP dummy
    scoreboard objectives add stat_entity.Max_HP dummy
    #AT
    scoreboard objectives add stat_entity.AT dummy
    #DF
    scoreboard objectives add stat_entity.Physical_DF dummy
    scoreboard objectives add stat_entity.Magic_DF dummy
    #属性耐性ステータス
    #無属性耐性
    scoreboard objectives add stat_entity.None_DF dummy
    #火属性耐性
    scoreboard objectives add stat_entity.Fire_DF dummy
    #水属性耐性
    scoreboard objectives add stat_entity.Water_DF dummy
    #氷属性耐性
    scoreboard objectives add stat_entity.Ice_DF dummy
    #雷属性耐性
    scoreboard objectives add stat_entity.Elect_DF dummy
    #光属性耐性
    scoreboard objectives add stat_entity.Light_DF dummy
    #闇属性耐性
    scoreboard objectives add stat_entity.Night_DF dummy

##ダメージディスプレイ用乱数
    scoreboard objectives add system.random_1 dummy
    scoreboard objectives add system.random_2 dummy
    scoreboard objectives add system.random_3 dummy
    scoreboard objectives add system.random_4 dummy
    scoreboard objectives add system.random_5 dummy

##敵HPゲージ用
    scoreboard objectives add system_entity.health_gauge_rate dummy
    scoreboard objectives add system_entity.health_gauge_Max_HP dummy
    scoreboard objectives add system_entity.health_gauge_HP dummy

##敵-属性デバフ関連
    #無属性
    scoreboard objectives add system_entity.element_effect_None.EGG dummy
    scoreboard objectives add system_entity.element_effect_None.ICD dummy
    #火属性
    scoreboard objectives add system_entity.element_effect_Fire.EGG dummy
    scoreboard objectives add system_entity.element_effect_Fire.ICD dummy
    scoreboard objectives add system_entity.element_effect_Fire.Count dummy
    scoreboard objectives add system_entity.element_effect_Fire.Timer dummy
    #水属性
    scoreboard objectives add system_entity.element_effect_Water.EGG dummy
    scoreboard objectives add system_entity.element_effect_Water.ICD dummy
    #氷属性
    scoreboard objectives add system_entity.element_effect_Ice.EGG dummy
    scoreboard objectives add system_entity.element_effect_Ice.ICD dummy
    #雷属性
    scoreboard objectives add system_entity.element_effect_Elect.EGG dummy
    scoreboard objectives add system_entity.element_effect_Elect.ICD dummy
    #光属性
    scoreboard objectives add system_entity.element_effect_Light.EGG dummy
    scoreboard objectives add system_entity.element_effect_Light.ICD dummy
    #闇属性
    scoreboard objectives add system_entity.element_effect_Night.EGG dummy
    scoreboard objectives add system_entity.element_effect_Night.ICD dummy
#----------------------------------------------------------------------------------

##アマスタ(魔法)
    #ダメージ
    scoreboard objectives add stat_armor.damage dummy
    #移動距離(キル用)
    scoreboard objectives add stat_armor.move_count dummy