##いろいろ計算
#攻撃力計算→☆
#属性特攻計算→★
#会心系→◆

##基礎値設定
    #☆
    function system:defo_set/at
    #★
    function system:defo_set/attri
    #◆
    function system:defo_set/crit
#

##武器分加算
    #☆★◆
    tag @s add set_weap_stat
    scoreboard players set @s stat_player.Weapon_AT 0
    scoreboard players set @s stat_player.Weapon_SK 0
    scoreboard players set @s stat_player.Weapon_ITL 0
    function weapon:item/main
#

##最終値に代入
    #☆
    scoreboard players operation @s stat_player.Final_AT = @s stat_player.Base_AT
    scoreboard players operation @s stat_player.Final_AT += @s stat_player.Weapon_AT
    scoreboard players operation @s stat_player.Final_SK = @s stat_player.Base_SK
    scoreboard players operation @s stat_player.Final_SK += @s stat_player.Weapon_SK
    scoreboard players operation @s stat_player.Final_ITL = @s stat_player.Base_ITL
    scoreboard players operation @s stat_player.Final_ITL += @s stat_player.Weapon_ITL
    #★
    scoreboard players operation @s stat_player.Final_None_Break = @s stat_player.Base_None_Break
    scoreboard players operation @s stat_player.Final_Fire_Break = @s stat_player.Base_Fire_Break
    scoreboard players operation @s stat_player.Final_Water_Break = @s stat_player.Base_Water_Break
    scoreboard players operation @s stat_player.Final_Ice_Break = @s stat_player.Base_Ice_Break
    scoreboard players operation @s stat_player.Final_Elect_Break = @s stat_player.Base_Elect_Break
    scoreboard players operation @s stat_player.Final_Light_Break = @s stat_player.Base_Light_Break
    scoreboard players operation @s stat_player.Final_Night_Break = @s stat_player.Base_Night_Break
    #◆
    scoreboard players operation @s stat_player.Final_Crit_Rate = @s stat_player.Base_Crit_Rate
    scoreboard players operation @s stat_player.Final_Crit_Rate += @s stat_player.Weapon_Crit_Rate
    scoreboard players operation @s stat_player.Final_Crit_Damage = @s stat_player.Base_Crit_Damage
    scoreboard players operation @s stat_player.Final_Crit_Damage += @s stat_player.Weapon_Crit_Rate
#

##装備分加算
    #☆★◆
    function equipment:stat/accessories/at
#

##バフ分加算
    #☆★◆
    function system:buff/at
#

##最大値チェック
    #☆
    scoreboard players operation @s stat_player.Final_AT_Max = @s stat_player.Final_AT
    execute if score @s stat_player.Final_AT_Max < @s stat_player.Final_SK run scoreboard players operation @s stat_player.Final_AT_Max = @s stat_player.Final_SK
    execute if score @s stat_player.Final_AT_Max < @s stat_player.Final_ITL run scoreboard players operation @s stat_player.Final_AT_Max = @s stat_player.Final_ITL
    #残り二つを25%の加算
    scoreboard players set @s cal.num_3 0
    scoreboard players set $4 cal.num 4
    execute if score @s stat_player.Final_AT_Max > @s stat_player.Final_AT run scoreboard players operation @s cal.num_3 += @s stat_player.Final_AT
    execute if score @s stat_player.Final_AT_Max > @s stat_player.Final_SK run scoreboard players operation @s cal.num_3 += @s stat_player.Final_SK
    execute if score @s stat_player.Final_AT_Max > @s stat_player.Final_ITL run scoreboard players operation @s cal.num_3 += @s stat_player.Final_ITL
    scoreboard players operation @s cal.num_3 /= $4 cal.num
    scoreboard players operation @s stat_player.Final_AT_Max += @s cal.num_3
#

##MP_Cap
    function system:cal/mp_cap