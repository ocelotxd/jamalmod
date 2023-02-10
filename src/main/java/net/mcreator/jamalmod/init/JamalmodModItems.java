
/*
 *    MCreator note: This file will be REGENERATED on each build.
 */
package net.mcreator.jamalmod.init;

import net.minecraftforge.registries.RegistryObject;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.common.ForgeSpawnEggItem;

import net.minecraft.world.level.block.Block;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.CreativeModeTab;
import net.minecraft.world.item.BlockItem;

import net.mcreator.jamalmod.item.MarihuaniumItem;
import net.mcreator.jamalmod.item.JmaldiskItem;
import net.mcreator.jamalmod.item.BananaItem;
import net.mcreator.jamalmod.JamalmodMod;

public class JamalmodModItems {
	public static final DeferredRegister<Item> REGISTRY = DeferredRegister.create(ForgeRegistries.ITEMS, JamalmodMod.MODID);
	public static final RegistryObject<Item> TURRET_SPAWN_EGG = REGISTRY.register("turret_spawn_egg", () -> new ForgeSpawnEggItem(JamalmodModEntities.TURRET, -1, -1, new Item.Properties().tab(CreativeModeTab.TAB_MISC)));
	public static final RegistryObject<Item> BANANA = REGISTRY.register("banana", () -> new BananaItem());
	public static final RegistryObject<Item> JMALDISK = REGISTRY.register("jmaldisk", () -> new JmaldiskItem());
	public static final RegistryObject<Item> MARIHUANIUM = REGISTRY.register("marihuanium", () -> new MarihuaniumItem());
	public static final RegistryObject<Item> MARIHUANIUM_ORE = block(JamalmodModBlocks.MARIHUANIUM_ORE, JamalmodModTabs.TAB_JAMAL_TAB);
	public static final RegistryObject<Item> JMALA_SPAWN_EGG = REGISTRY.register("jmala_spawn_egg", () -> new ForgeSpawnEggItem(JamalmodModEntities.JMALA, -1, -1, new Item.Properties().tab(JamalmodModTabs.TAB_JAMAL_TAB)));
	public static final RegistryObject<Item> MARIHUANA = block(JamalmodModBlocks.MARIHUANA, JamalmodModTabs.TAB_JAMAL_TAB);
	public static final RegistryObject<Item> MRHN = block(JamalmodModBlocks.MRHN, JamalmodModTabs.TAB_JAMAL_TAB);
	public static final RegistryObject<Item> MRHNN = block(JamalmodModBlocks.MRHNN, JamalmodModTabs.TAB_JAMAL_TAB);

	private static RegistryObject<Item> block(RegistryObject<Block> block, CreativeModeTab tab) {
		return REGISTRY.register(block.getId().getPath(), () -> new BlockItem(block.get(), new Item.Properties().tab(tab)));
	}
}
