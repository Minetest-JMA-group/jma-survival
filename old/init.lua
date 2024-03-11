local christmas_nodes = {"xpanes:lights_white_pane_flat", "xpanes:lights_multicolor_bulb_pane_flat", "xpanes:lights_multicolor_pane_flat", "xpanes:lights_white_icicle_pane_flat", "christmas_decor:gumdrop_orange", "christmas_decor:icicles_wall", "christmas_decor:gumdrop_purple", "christmas_decor:gumdrop_green", "christmas_decor:gumdrop_blue", "christmas_decor:icicles_hanging", "christmas_decor:gumdrop_yellow", "christmas_decor:gumdrop_red", "christmas_decor:garland", "christmas_decor:garland_lights", "christmas_decor:candycane", "christmas_decor:frosting_trim", "christmas_decor:frosting_line", "christmas:present", "christmas:tree", "christmas_decor:frosting_block", "christmas_decor:candycane_block", "christmas_decor:peppermint_block", "christmas:stocking", "christmas:eggnog", "christmas:lights", "christmas_decor:lights_white_icicle", "christmas_decor:lights_white", "christmas_decor:lights_multicolor_bulb", "christmas_decor:lights_multicolor", "christmas_decor:nutcracker", "christmas_decor:mistletoe", "christmas_decor:milk_glass", "christmas_decor:plate_with_cookies", "christmas_decor:snowman", "christmas_decor:stocking", "christmastree:christmas_wreath", "christmastree:indoortree", "christmastree:outdoortree", "christmastree:outdoortree_snow"}
local christmas_entities = {"christmas_decor:santa", "christmas_decor:reindeer", "christmas_decor:rudolf", "christmas_decor:mrs_claus"}
local christmas_items = {"christmas:bauble_red", "christmas:candy_cane", "christmas:gingerbread_man", "christmas:mince_pie", "christmas:star", "christmas_decor:cookiecutter", "christmas_decor:ginger", "christmas_decor:gingerbread_dough", "christmas_decor:gingerbread_man", "christmas_decor:gingerbread_man_raw", "christmas_decor:led_rgb", "christmas_decor:led_white", "christmas_decor:wire"}
--Quartz:
minetest.register_alias("quartz:quartz_ore", "default:stone")
minetest.register_alias("quartz:quartz_crystal", "default:stone")
minetest.register_alias("quartz:quartz_crystal_piece", "default:stone")
minetest.register_alias("quartz:block", "default:stone")
minetest.register_alias("quartz:chiseled", "default:stone")
minetest.register_alias("quartz:pillar", "default:stone")
--Christmas sugar:
minetest.register_alias_force("christmas:sugar", "farming:sugar")
--Lighted helmets:
minetest.register_alias("lighted_helmets:mithril", "3d_armor:helmet_mithril")
minetest.register_alias("lighted_helmets:bronze", "3d_armor:helmet_bronze")
minetest.register_alias("lighted_helmets:cactus", "3d_armor:helmet_cactus")
minetest.register_alias("lighted_helmets:crystal", "3d_armor:helmet_crystal")
minetest.register_alias("lighted_helmets:diamond", "3d_armor:helmet_diamond")
minetest.register_alias("lighted_helmets:gold", "3d_armor:helmet_gold")
minetest.register_alias("lighted_helmets:steel", "3d_armor:helmet_steel")
minetest.register_alias("lighted_helmets:wood", "3d_armor:helmet_wood")
--Obsidian stuff:
minetest.register_alias("obsidianstuff:ingot", "default:obsidian")
minetest.register_alias("obsidianstuff:sword", "default:obsidian")
minetest.register_alias("obsidianstuff:pick", "default:obsidian")
minetest.register_alias("obsidianstuff:shovel", "default:obsidian")
minetest.register_alias("obsidianstuff:axe", "default:obsidian")
minetest.register_alias("obsidianstuff:helmet", "default:obsidian")
minetest.register_alias("obsidianstuff:chestplate", "default:obsidian")
minetest.register_alias("obsidianstuff:leggings", "default:obsidian")
minetest.register_alias("obsidianstuff:boots", "default:obsidian")
minetest.register_alias("obsidianstuff:shield", "default:obsidian")
minetest.register_alias("obsidianstuff:block", "default:obsidian_block")

--Christmas nodes:
minetest.register_abm({
	nodenames = {"group:old"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		minetest.env:remove_node(pos)
	end,
})

---[[
armor:register_armor(":christmas_decor:hat_santa", {
	description = "Santa Hat",
	groups = {armor_head = 1, armor_use = 0, not_in_creative_inventory = 1},
})

armor:register_armor(":christmas_decor:hat_elf", {
	description = "Elf Hat",
	groups = {armor_head = 1, armor_use = 0, not_in_creative_inventory = 1},
})

minetest.register_alias("christmas_decor:helmet_santa_hat", "christmas_decor:hat_santa")
minetest.register_alias("christmas_decor:helmet_elf_hat", "christmas_decor:hat_elf")

for _,node_name in ipairs(christmas_items) do
	minetest.register_craftitem(":"..node_name, {
		groups = {not_in_creative_inventory = 1},
		description = node_name,
	})
end

for _,node_name in ipairs(christmas_nodes) do
	minetest.register_node(":"..node_name, {
		groups = {old=1},
		after_place_node = function(pos, placer, itemstack, pointed_thing)
			minetest.env:remove_node(pos)
			return true	--Don't take anything from itemstack
		end,
	})
end

for _,entity_name in ipairs(christmas_entities) do
	minetest.register_entity(":"..entity_name, {
		on_activate = function(self, staticdata)
			self.object:remove()
		end,
	})
end
--]]
