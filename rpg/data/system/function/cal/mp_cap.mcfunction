##MP計算

##基礎値設定
    scoreboard players operation @s stat_player.Base_MP_Cap = @s stat_player.LV
#

##装備分加算
    #<function>
#

##バフ分加算
    #<function>
#

##武器値加算＆最終値に代入
    scoreboard players operation @s stat_player.Final_MP_Cap = @s stat_player.Base_MP_Cap
    scoreboard players operation @s stat_player.Final_MP_Cap += @s stat_player.Weapon_MP_Cap
    scoreboard players set @s stat_player.Weapon_MP_Cap 0
#