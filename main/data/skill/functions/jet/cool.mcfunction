# クールダウン
## 0以下だったら初期化
execute if score $jet:cool SKILL matches ..0 run scoreboard players operation $jet:cool SKILL = $jet:base SKILL

## クールダウン
execute unless score $jet:cool SKILL matches ..0 run scoreboard players remove $jet:cool SKILL 1

## 0になったらカウント初期化
execute if score $jet:cool SKILL matches ..0 run scoreboard players set $jet SKILL 0
