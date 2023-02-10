
/*
 *    MCreator note: This file will be REGENERATED on each build.
 */
package net.mcreator.jamalmod.init;

import net.minecraftforge.registries.RegistryObject;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.fml.event.lifecycle.FMLCommonSetupEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.event.entity.EntityAttributeCreationEvent;

import net.minecraft.world.entity.MobCategory;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.Entity;

import net.mcreator.jamalmod.entity.TURRETEntityProjectile;
import net.mcreator.jamalmod.entity.TURRETEntity;
import net.mcreator.jamalmod.entity.JmalaEntity;
import net.mcreator.jamalmod.JamalmodMod;

@Mod.EventBusSubscriber(bus = Mod.EventBusSubscriber.Bus.MOD)
public class JamalmodModEntities {
	public static final DeferredRegister<EntityType<?>> REGISTRY = DeferredRegister.create(ForgeRegistries.ENTITY_TYPES, JamalmodMod.MODID);
	public static final RegistryObject<EntityType<TURRETEntity>> TURRET = register("turret",
			EntityType.Builder.<TURRETEntity>of(TURRETEntity::new, MobCategory.MONSTER).setShouldReceiveVelocityUpdates(true).setTrackingRange(64).setUpdateInterval(3).setCustomClientFactory(TURRETEntity::new)

					.sized(0.6f, 1.8f));
	public static final RegistryObject<EntityType<TURRETEntityProjectile>> TURRET_PROJECTILE = register("projectile_turret", EntityType.Builder.<TURRETEntityProjectile>of(TURRETEntityProjectile::new, MobCategory.MISC)
			.setShouldReceiveVelocityUpdates(true).setTrackingRange(64).setUpdateInterval(1).setCustomClientFactory(TURRETEntityProjectile::new).sized(0.5f, 0.5f));
	public static final RegistryObject<EntityType<JmalaEntity>> JMALA = register("jmala",
			EntityType.Builder.<JmalaEntity>of(JmalaEntity::new, MobCategory.MONSTER).setShouldReceiveVelocityUpdates(true).setTrackingRange(78).setUpdateInterval(3).setCustomClientFactory(JmalaEntity::new)

					.sized(1.9000000000000001f, 1.7000000000000002f));

	private static <T extends Entity> RegistryObject<EntityType<T>> register(String registryname, EntityType.Builder<T> entityTypeBuilder) {
		return REGISTRY.register(registryname, () -> (EntityType<T>) entityTypeBuilder.build(registryname));
	}

	@SubscribeEvent
	public static void init(FMLCommonSetupEvent event) {
		event.enqueueWork(() -> {
			TURRETEntity.init();
			JmalaEntity.init();
		});
	}

	@SubscribeEvent
	public static void registerAttributes(EntityAttributeCreationEvent event) {
		event.put(TURRET.get(), TURRETEntity.createAttributes().build());
		event.put(JMALA.get(), JmalaEntity.createAttributes().build());
	}
}
