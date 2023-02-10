
package net.mcreator.jamalmod.item;

import net.minecraft.world.item.Rarity;
import net.minecraft.world.item.Item;
import net.minecraft.world.food.FoodProperties;

import net.mcreator.jamalmod.init.JamalmodModTabs;

public class MarihuaniumItem extends Item {
	public MarihuaniumItem() {
		super(new Item.Properties().tab(JamalmodModTabs.TAB_JAMAL_TAB).stacksTo(64).rarity(Rarity.EPIC).food((new FoodProperties.Builder()).nutrition(1).saturationMod(0.5f).alwaysEat()

				.build()));
	}
}
