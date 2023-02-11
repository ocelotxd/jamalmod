
/*
 *    MCreator note: This file will be REGENERATED on each build.
 */
package net.mcreator.jamalmod.init;

import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.client.event.EntityRenderersEvent;
import net.minecraftforge.api.distmarker.Dist;

import net.minecraft.client.renderer.entity.ThrownItemRenderer;

import net.mcreator.jamalmod.client.renderer.TURRETRenderer;
import net.mcreator.jamalmod.client.renderer.JmalaRenderer;

@Mod.EventBusSubscriber(bus = Mod.EventBusSubscriber.Bus.MOD, value = Dist.CLIENT)
public class JamalmodModEntityRenderers {
	@SubscribeEvent
	public static void registerEntityRenderers(EntityRenderersEvent.RegisterRenderers event) {
		event.registerEntityRenderer(JamalmodModEntities.TURRET.get(), TURRETRenderer::new);
		event.registerEntityRenderer(JamalmodModEntities.TURRET_PROJECTILE.get(), ThrownItemRenderer::new);
		event.registerEntityRenderer(JamalmodModEntities.JMALA.get(), JmalaRenderer::new);
	}
}
