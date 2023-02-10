
/*
 *    MCreator note: This file will be REGENERATED on each build.
 */
package net.mcreator.jamalmod.init;

import net.minecraftforge.registries.RegistryObject;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.DeferredRegister;

import net.minecraft.sounds.SoundEvent;
import net.minecraft.resources.ResourceLocation;

import net.mcreator.jamalmod.JamalmodMod;

public class JamalmodModSounds {
	public static final DeferredRegister<SoundEvent> REGISTRY = DeferredRegister.create(ForgeRegistries.SOUND_EVENTS, JamalmodMod.MODID);
	public static final RegistryObject<SoundEvent> ETS = REGISTRY.register("ets", () -> new SoundEvent(new ResourceLocation("jamalmod", "ets")));
	public static final RegistryObject<SoundEvent> FXDTGEAZGHR = REGISTRY.register("fxdtgeazghr", () -> new SoundEvent(new ResourceLocation("jamalmod", "fxdtgeazghr")));
}
