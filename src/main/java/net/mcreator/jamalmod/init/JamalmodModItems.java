
/*
 *    MCreator note: This file will be REGENERATED on each build.
 */
package net.mcreator.jamalmod.init;

import net.minecraftforge.registries.RegistryObject;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.common.ForgeSpawnEggItem;

import net.minecraft.world.item.Item;
import net.minecraft.world.item.CreativeModeTab;

import net.mcreator.jamalmod.item.BananaItem;
import net.mcreator.jamalmod.JamalmodMod;

public class JamalmodModItems {
	public static final DeferredRegister<Item> REGISTRY = DeferredRegister.create(ForgeRegistries.ITEMS, JamalmodMod.MODID);
	public static final RegistryObject<Item> TURRET_SPAWN_EGG = REGISTRY.register("turret_spawn_egg", () -> new ForgeSpawnEggItem(JamalmodModEntities.TURRET, -1, -1, new Item.Properties().tab(CreativeModeTab.TAB_MISC)));
	public static final RegistryObject<Item> BANANA = REGISTRY.register("banana", () -> new BananaItem());
}
