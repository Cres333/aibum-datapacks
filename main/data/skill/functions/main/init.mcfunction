# スキル関係の初期化
## 共通 *************************************
scoreboard objectives remove SKILL
scoreboard objectives add SKILL dummy {"text":"スキル関連"}

## JET **************************************
### 実行中カウント用
scoreboard players set $jet SKILL 0
### 実行可能な上限値
scoreboard players set $jet:limit SKILL 60
### クールダウンのカウント用
scoreboard players set $jet:cool SKILL 0
### クールダウンの最大値
scoreboard players set $jet:base SKILL 600
