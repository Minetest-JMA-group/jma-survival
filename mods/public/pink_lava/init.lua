
-- colorize default lava textures with a pink hue

local source_texture = "default_lava_source_animated.png^[colorize:#ff65b5c0"
local flowing_texture = "default_lava_flowing_animated.png^[colorize:#ff65b5c0"
local tile_texture = "default_lava.png^[colorize:#ff65b5c0"

-- register pink lava source node

minetest.register_node("pink_lava:pink_lava_source", {
	description = "Pink Lava Source",
	drawtype = "liquid",
	tiles = {
		{
			name = source_texture,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0
			}
		},
		{
			name = source_texture,
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0
			}
		}
	},
	paramtype = "light",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "pink_lava:pink_lava_flowing",
	liquid_alternative_source = "pink_lava:pink_lava_source",
	liquid_viscosity = 7,
	liquid_range = 6,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 0, b = 171},
	groups = {lava = 3, liquid = 2, igniter = 1}
})

-- register pink lava flowing node

minetest.register_node("pink_lava:pink_lava_flowing", {
	description = "Pink Flowing Lava",
	drawtype = "flowingliquid",
	tiles = {tile_texture},
	special_tiles = {
		{
			name = flowing_texture,
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3
			}
		},
		{
			name = flowing_texture,
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3
			}
		}
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "pink_lava:pink_lava_flowing",
	liquid_alternative_source = "pink_lava:pink_lava_source",
	liquid_viscosity = 7,
	liquid_range = 6,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 0, b = 171},
	groups = {lava = 3, liquid = 2, igniter = 1, not_in_creative_inventory = 1}
})

-- check bucket mod is active

if minetest.get_modpath("bucket") then

	-- register bucket of pink lava

	bucket.register_liquid(
		"pink_lava:pink_lava_source",
		"pink_lava:pink_lava_flowing",
		"pink_lava:bucket_pink_lava",
		"bucket_pink_lava.png",
		"Pink Lava Bucket",
		{tool = 1}
	)

	-- add bucket of pink lava as fuel source in furnace

	minetest.register_craft({
		type = "fuel",
		recipe = "pink_lava:bucket_pink_lava",
		burntime = 50,
		replacements = {{"pink_lava:bucket_pink_lava", "bucket:bucket_empty"}},
	})

	-- check dungeon loot mod is active

	if minetest.global_exists("dungeon_loot") then

		-- add pink lava bucket to loot table as a rare item

		dungeon_loot.register({
			{
				name = "pink_lava:bucket_pink_lava",
				chance = 0.09,
				types = {"sandstone", "desert"}
			}
		})
	end
end

-- mahogany obsidian node

minetest.register_node("pink_lava:mahogany_obsidian", {
	description = "Mahogany Obsidian",
	tiles = {"mahogany_obsidian.png"},
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 1, level = 2}
})

-- check stairs mod is active

if minetest.get_modpath("stairs") then

	-- register mahogany obsidian stairs

	stairs.register_stair_and_slab(
		"mahogany_obsidian",
		"pink_lava:mahogany_obsidian",
		{cracky = 1, level = 2},
		{"mahogany_obsidian.png"},
		"Mahogany Obsidian Stair",
		"Mahogany Obsidian Slab",
		default.node_sound_stone_defaults(),
		true)
end

-- check if lava cooling is enabled

if minetest.settings:get_bool("enable_lavacooling") ~= false then

	-- register abm to handle lava cooling

	minetest.register_abm({
		label = "Pink Lava cooling",
		nodenames = {"pink_lava:pink_lava_source", "pink_lava:pink_lava_flowing"},
		neighbors = {"group:cools_lava", "group:water"},
		interval = 2,
		chance = 2,
		catch_up = false,

		action = function(pos, node)

			-- pink lava source turns into mahogany obsidian

			if node.name == "pink_lava:pink_lava_source" then

				minetest.swap_node(pos, {name = "pink_lava:mahogany_obsidian"})

			else -- pink lava flowing turns into random sandstone

				if math.random(4) == 1 then
					minetest.swap_node(pos, {name = "default:desert_sandstone"})
				else
					minetest.swap_node(pos, {name = "default:sandstone"})
				end
			end

			minetest.sound_play("default_cool_lava",
					{pos = pos, max_hear_distance = 14, gain = 0.25}, true)
		end
	})
end

--register pink lava as an ore that appears scattered at a certain level

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "pink_lava:pink_lava_source",
	wherein        = "default:stone",
	clust_scarcity = 64 * 64 * 64,
	clust_num_ores = 3,
	clust_size     = 2,
	y_max          = -2048,
	y_min          = -4096
})


print("[MOD] Pink Lava loaded")
