# 水の中にいる
## 下が水なら強制的に沈める
execute if block ~ ~-1 ~ water run tp @s ~ ~-1 ~

## バーを表示
bossbar set drawn visible true

## ゲージを減らす
execute if score $drawn PRM matches 1.. run scoreboard players remove $drawn PRM 1

## バーに反映
execute store result bossbar drawn value run scoreboard players get $drawn PRM

## 一定値になったらバーの色を変える
execute if score $drawn PRM matches 20 run bossbar set drawn color red
execute if score $drawn PRM matches 40 run bossbar set drawn color yellow

## 0になったらテレポート
execute if score $drawn PRM matches ..0 run function core:drown/down
