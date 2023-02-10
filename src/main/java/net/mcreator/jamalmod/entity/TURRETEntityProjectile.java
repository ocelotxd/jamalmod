
package net.mcreator.jamalmod.entity;

import net.minecraftforge.network.PlayMessages;
import net.minecraftforge.network.NetworkHooks;
import net.minecraftforge.api.distmarker.OnlyIn;
import net.minecraftforge.api.distmarker.Dist;

import net.minecraft.world.level.Level;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.entity.projectile.ItemSupplier;
import net.minecraft.world.entity.projectile.AbstractArrow;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.EntityType;
import net.minecraft.network.protocol.Packet;

import net.mcreator.jamalmod.init.JamalmodModItems;
import net.mcreator.jamalmod.init.JamalmodModEntities;

@OnlyIn(value = Dist.CLIENT, _interface = ItemSupplier.class)
public class TURRETEntityProjectile extends AbstractArrow implements ItemSupplier {
	public TURRETEntityProjectile(PlayMessages.SpawnEntity packet, Level world) {
		super(JamalmodModEntities.TURRET_PROJECTILE.get(), world);
	}

	public TURRETEntityProjectile(EntityType<? extends TURRETEntityProjectile> type, Level world) {
		super(type, world);
	}

	public TURRETEntityProjectile(EntityType<? extends TURRETEntityProjectile> type, double x, double y, double z, Level world) {
		super(type, x, y, z, world);
	}

	public TURRETEntityProjectile(EntityType<? extends TURRETEntityProjectile> type, LivingEntity entity, Level world) {
		super(type, entity, world);
	}

	@Override
	public Packet<?> getAddEntityPacket() {
		return NetworkHooks.getEntitySpawningPacket(this);
	}

	@Override
	protected void doPostHurtEffects(LivingEntity livingEntity) {
		super.doPostHurtEffects(livingEntity);
		livingEntity.setArrowCount(livingEntity.getArrowCount() - 1);
	}

	@Override
	@OnlyIn(Dist.CLIENT)
	public ItemStack getItem() {
		return new ItemStack(JamalmodModItems.BANANA.get());
	}

	@Override
	protected ItemStack getPickupItem() {
		return new ItemStack(JamalmodModItems.BANANA.get());
	}
}
