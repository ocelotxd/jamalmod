fill ~-2 ~ ~-2 ~2 ~ ~2 cobblestone destroy
fill ~-1 ~ ~-1 ~1 ~ ~1 oak_planks replace
setblock ~ ~ ~-3 oak_stairs[facing=south] destroy

setblock ~-2 ~ ~-2 oak_log[axis=y] replace
setblock ~2 ~ ~-2 oak_log[axis=y] replace
setblock ~-2 ~ ~2 oak_log[axis=y] replace
setblock ~2 ~ ~2 oak_log[axis=y] replace

setblock ~-1 ~1 ~1 oak_stairs[facing=south] destroy
setblock ~1 ~1 ~ white_bed[part=foot,facing=south] destroy
setblock ~1 ~1 ~1 white_bed[part=head,facing=south] destroy

fill ~-2 ~1 ~-1 ~-2 ~1 ~1 cobblestone destroy
fill ~2 ~1 ~-1 ~2 ~1 ~1 cobblestone destroy
fill ~-1 ~1 ~-2 ~1 ~1 ~-2 cobblestone destroy
fill ~-1 ~1 ~2 ~1 ~1 ~2 cobblestone destroy

fill ~-2 ~2 ~-1 ~-2 ~2 ~1 oak_log[axis=z] destroy
fill ~2 ~2 ~-1 ~2 ~2 ~1 oak_log[axis=z] destroy
fill ~-1 ~2 ~-2 ~1 ~2 ~-2 cobblestone destroy
fill ~-1 ~2 ~2 ~1 ~2 ~2 oak_log[axis=x] destroy

setblock ~ ~2 ~2 minecraft:glass_pane replace
setblock ~-2 ~2 ~ minecraft:glass_pane replace
setblock ~2 ~2 ~ minecraft:glass_pane replace

fill ~-2 ~3 ~-1 ~-2 ~3 ~1 cobblestone destroy
fill ~2 ~3 ~-1 ~2 ~3 ~1 cobblestone destroy
fill ~-1 ~3 ~-2 ~1 ~3 ~-2 cobblestone destroy
fill ~-1 ~3 ~2 ~1 ~3 ~2 cobblestone destroy

fill ~-2 ~1 ~-2 ~-2 ~3 ~-2 oak_log[axis=y] destroy
fill ~2 ~1 ~-2 ~2 ~3 ~-2 oak_log[axis=y] destroy
fill ~-2 ~1 ~2 ~-2 ~3 ~2 oak_log[axis=y] destroy
fill ~2 ~1 ~2 ~2 ~3 ~2 oak_log[axis=y] destroy

setblock ~ ~3 ~1 wall_torch[facing=north]
setblock ~ ~3 ~-3 wall_torch[facing=north]

fill ~-2 ~4 ~-2 ~2 ~4 ~2 oak_planks destroy
fill ~-1 ~4 ~-1 ~1 ~4 ~1 air replace

fill ~-3 ~4 ~3 ~3 ~4 ~3 oak_stairs[facing=north] destroy
fill ~-3 ~4 ~-3 ~3 ~4 ~-3 oak_stairs[facing=south] destroy
fill ~-3 ~4 ~2 ~-3 ~4 ~-2 oak_stairs[facing=east] destroy
fill ~3 ~4 ~2 ~3 ~4 ~-2 oak_stairs[facing=west] destroy

fill ~-2 ~5 ~2 ~2 ~5 ~2 oak_stairs[facing=north] destroy
fill ~-2 ~5 ~-2 ~2 ~5 ~-2 oak_stairs[facing=south] destroy
fill ~-2 ~5 ~1 ~-2 ~5 ~-1 oak_stairs[facing=east] destroy
fill ~2 ~5 ~1 ~2 ~5 ~-1 oak_stairs[facing=west] destroy

fill ~-1 ~5 ~-1 ~1 ~5 ~1 oak_planks destroy

setblock ~ ~1 ~-2 oak_door[facing=south,half=lower] replace
setblock ~ ~2 ~-2 oak_door[facing=south,half=upper] replace

summon villager ~ ~2 ~

playsound minecraft:entity.generic.explode master @a ~ ~ ~
