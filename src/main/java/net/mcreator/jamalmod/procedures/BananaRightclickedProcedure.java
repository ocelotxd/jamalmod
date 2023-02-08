package net.mcreator.jamalmod.procedures;

import net.minecraft.world.level.LevelAccessor;
import net.minecraft.world.level.Level;
import net.minecraft.world.entity.projectile.ThrownEgg;
import net.minecraft.world.entity.projectile.Projectile;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.Entity;
import net.minecraft.server.level.ServerLevel;

import net.mcreator.jamalmod.JamalmodMod;

public class BananaRightclickedProcedure {
	public static void execute(LevelAccessor world, double x, double y, double z, Entity entity) {
		if (entity == null)
			return;
		for (int index0 = 0; index0 < (int) (40); index0++) {
			JamalmodMod.queueServerWork(1, () -> {
				if (world instanceof ServerLevel projectileLevel) {
					Projectile _entityToSpawn = new Object() {
						public Projectile getProjectile(Level level, Entity shooter) {
							Projectile entityToSpawn = new ThrownEgg(EntityType.EGG, level);
							entityToSpawn.setOwner(shooter);
							return entityToSpawn;
						}
					}.getProjectile(projectileLevel, entity);
					_entityToSpawn.setPos(x, y, z);
					_entityToSpawn.shoot(1, 1, 1, 1, 0);
					projectileLevel.addFreshEntity(_entityToSpawn);
				}
			});
		}
	}
}
