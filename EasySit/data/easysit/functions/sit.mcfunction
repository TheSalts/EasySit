summon item_display ~ ~ ~ {Tags:["sit.chair"]}
ride @s mount @e[tag=sit.chair,tag=!sit.chair.sitting,limit=1,sort=nearest]
tag @s add player.sitting
scoreboard players set @s sit 0
execute on vehicle run tag @s add sit.chair.sitting
function easysit:messages/sit