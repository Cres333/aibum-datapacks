# システム初期化
## スコアボード追加 **************************
scoreboard objectives remove PRM
scoreboard objectives add PRM dummy {"text":"パラメータ"}

## 溺れたときの処理 **************************
bossbar add drawn {"text":"***"}
bossbar set drawn color red
bossbar set drawn max 10
bossbar set drawn value 10
bossbar set drawn players @a[team=!]
bossbar set drawn visible false
bossbar set drawn style progress
scoreboard players set $drawn PRM 10
scoreboard players set $drawn:base PRM 10
