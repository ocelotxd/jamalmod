
/*
 *    MCreator note: This file will be REGENERATED on each build.
 */
package net.mcreator.jamalmod.init;

import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.CreativeModeTab;

public class JamalmodModTabs {
	public static CreativeModeTab TAB_JAMAL_TAB;

	public static void load() {
		TAB_JAMAL_TAB = new CreativeModeTab("tabjamal_tab") {
			@Override
			public ItemStack makeIcon() {
				return new ItemStack(JamalmodModItems.JMALDISK.get());
			}

			@Override
			public boolean hasSearchBar() {
				return false;
			}
		};
	}
}
