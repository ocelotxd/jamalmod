package net.mcreator.jamalmod.procedures;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.level.Level;
import net.minecraft.world.entity.projectile.SpectralArrow;
import net.minecraft.world.entity.projectile.Projectile;
import net.minecraft.world.entity.projectile.AbstractArrow;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.Entity;
import net.minecraft.server.level.ServerLevel;

public class BananaRightclickedProcedure {
	public static void execute(LevelAccessor world, double x, double y, double z, Entity entity) {
		if (entity == null)
			return;
		for (int index0 = 0; index0 < (int) (50); index0++) {
			if (world instanceof ServerLevel projectileLevel) {
				Projectile _entityToSpawn = new Object() {
					public Projectile getArrow(Level level, Entity shooter, float damage, int knockback, byte piercing) {
						AbstractArrow entityToSpawn = new SpectralArrow(EntityType.SPECTRAL_ARROW, level);
						entityToSpawn.setOwner(shooter);
						entityToSpawn.setBaseDamage(damage);
						entityToSpawn.setKnockback(knockback);
						entityToSpawn.setPierceLevel(piercing);
						return entityToSpawn;
					}
				}.getArrow(projectileLevel, entity, 1, 0, (byte) 5);
				_entityToSpawn.setPos(x, y, z);
				_entityToSpawn.shoot((entity.getLookAngle().x), (entity.getLookAngle().y), (entity.getLookAngle().z), 2, 3);
				projectileLevel.addFreshEntity(_entityToSpawn);
			}
		}
	}
}
