
/*
 *    MCreator note: This file will be REGENERATED on each build.
 */
package net.mcreator.jamalmod.init;

import net.minecraftforge.registries.RegistryObject;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.DeferredRegister;

import net.minecraft.world.level.block.Block;

import net.mcreator.jamalmod.block.MrhnnBlock;
import net.mcreator.jamalmod.block.MrhnBlock;
import net.mcreator.jamalmod.block.MarihuaniumOreBlock;
import net.mcreator.jamalmod.block.MarihuanaBlock;
import net.mcreator.jamalmod.JamalmodMod;

public class JamalmodModBlocks {
	public static final DeferredRegister<Block> REGISTRY = DeferredRegister.create(ForgeRegistries.BLOCKS, JamalmodMod.MODID);
	public static final RegistryObject<Block> MARIHUANIUM_ORE = REGISTRY.register("marihuanium_ore", () -> new MarihuaniumOreBlock());
	public static final RegistryObject<Block> MARIHUANA = REGISTRY.register("marihuana", () -> new MarihuanaBlock());
	public static final RegistryObject<Block> MRHN = REGISTRY.register("mrhn", () -> new MrhnBlock());
	public static final RegistryObject<Block> MRHNN = REGISTRY.register("mrhnn", () -> new MrhnnBlock());
}
