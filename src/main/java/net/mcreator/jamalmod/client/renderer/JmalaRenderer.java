
package net.mcreator.jamalmod.client.renderer;

import net.minecraft.resources.ResourceLocation;
import net.minecraft.client.renderer.entity.layers.EyesLayer;
import net.minecraft.client.renderer.entity.MobRenderer;
import net.minecraft.client.renderer.entity.EntityRendererProvider;
import net.minecraft.client.renderer.RenderType;
import net.minecraft.client.model.geom.ModelLayers;
import net.minecraft.client.model.GhastModel;

import net.mcreator.jamalmod.entity.JmalaEntity;

public class JmalaRenderer extends MobRenderer<JmalaEntity, GhastModel<JmalaEntity>> {
	public JmalaRenderer(EntityRendererProvider.Context context) {
		super(context, new GhastModel(context.bakeLayer(ModelLayers.GHAST)), 1.3f);
		this.addLayer(new EyesLayer<JmalaEntity, GhastModel<JmalaEntity>>(this) {
			@Override
			public RenderType renderType() {
				return RenderType.eyes(new ResourceLocation("jamalmod:textures/entities/jamal-looks-better-in-preview-trust-me-on-planetminecraft-com_1.png"));
			}
		});
	}

	@Override
	public ResourceLocation getTextureLocation(JmalaEntity entity) {
		return new ResourceLocation("jamalmod:textures/entities/jamal-looks-better-in-preview-trust-me-on-planetminecraft-com_1.png");
	}
}
