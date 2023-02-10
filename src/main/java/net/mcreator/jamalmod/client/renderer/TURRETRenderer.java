
package net.mcreator.jamalmod.client.renderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.entity.MobRenderer;
import net.minecraft.client.renderer.entity.EntityRendererProvider;

import net.mcreator.jamalmod.entity.TURRETEntity;
import net.mcreator.jamalmod.client.model.Modelturret;

public class TURRETRenderer extends MobRenderer<TURRETEntity, Modelturret<TURRETEntity>> {
	public TURRETRenderer(EntityRendererProvider.Context context) {
		super(context, new Modelturret(context.bakeLayer(Modelturret.LAYER_LOCATION)), 0.5f);
	}

	@Override
	public ResourceLocation getTextureLocation(TURRETEntity entity) {
		return new ResourceLocation("jamalmod:textures/entities/turret.png");
	}
}
