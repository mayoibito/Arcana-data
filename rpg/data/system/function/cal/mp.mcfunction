##MP計算

##基礎値設定
    function system:defo_set/mp
#

##装備分加算
    #<function>
#

##バフ分加算
    #<function>
#

#------------------------------------------------------------------------------

##MP自然回復速度・MP消費量軽減
#◆MP自然回復速度
#◇MP消費量軽減

##初期値設定◇
    scoreboard players set @s stat_player.Base_Cover_MP 100
#

##装備分加算
    #<function>
#

##バフ分加算
    #<function>
#

##最終値に加算
    scoreboard players operation @s stat_player.Final_Regene_MP = @s stat_player.Base_Regene_MP
    scoreboard players operation @s stat_player.Final_Cover_MP = @s stat_player.Base_Cover_MP