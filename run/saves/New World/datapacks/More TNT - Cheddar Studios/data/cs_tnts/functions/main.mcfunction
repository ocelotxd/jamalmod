function cs_tnts:boulder/loop
function cs_tnts:blackhole/loop
function cs_tnts:lightning/loop
function cs_tnts:fireball/loop
function cs_tnts:mining/loop
function cs_tnts:sponge/loop
function cs_tnts:foraging/loop
function cs_tnts:house/loop
function cs_tnts:fliparoo/loop
function cs_tnts:void/loop
function cs_tnts:floatation/loop
function cs_tnts:upgrade/loop
function cs_tnts:split/loop
function cs_tnts:food/loop
function cs_tnts:looting/loop

execute as @e[tag=fuse,scores={cs-tnttimer=1..}] run scoreboard players remove @s cs-tnttimer 1
