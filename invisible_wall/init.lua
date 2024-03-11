--[[
		Minetest-mod "Invisible Wall", A mod with invisible blocks
		Copyright (C) 2021 J. A. Anders

		This program is free software; you can redistribute it and/or modify
		it under the terms of the GNU General Public License as published by
		the Free Software Foundation; version 3 of the License.

		This program is distributed in the hope that it will be useful,
		but WITHOUT ANY WARRANTY; without even the implied warranty of
		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
		GNU General Public License for more details.

		You should have received a copy of the GNU General Public License
		along with this program; if not, write to the Free Software
		Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
		MA 02110-1301, USA.
]]

--
-- Mod Version 0.3
--

invisible_wall = {}

-- Get Translator
local S = minetest.get_translator("invisible_wall")
invisible_wall.get_translator = S
local S = invisible_wall.get_translator

-- The Invisible Wall
minetest.register_node("invisible_wall:wall", {
	description = S("Invisible Wall"),
	inventory_image = minetest.inventorycube("invisible_wall.png"),
	wield_image = minetest.inventorycube("invisible_wall.png"),
	tiles = {"invisible_wall.png"},
	groups = {invisible_wall=1},
	drawtype = "airlike",
  paramtype = "light",
	air_equivalent = true,
	sunlight_propagates = true,
	on_blast = function()
  end,
})


minetest.register_tool("invisible_wall:dig_tool",  {
	description = S("Tool to dig invisible walls"),
	inventory_image = "invisible_wall_dig_tool.png",
	tool_capabilities = {
		full_punch_intervall = 1.5,
		max_drop_level = 1,
		groupcaps = {
			invisible_wall = {
				uses = 100,
				maxlevel = 1,
				times = {[1]=0.6},
			},
		},
		damage_groups = {fleshy=1},
	},
})

if minetest.get_modpath("default") then
  minetest.register_craft({
    type = "shaped",
    output = "invisible_wall:wall 5",
    recipe = {
    {"","default:glass",""},
    {"default:glass","default:mese","default:glass"},
    {"","default:glass",""},
    },
  })

  minetest.register_craft({
    type = "shaped",
    output = "invisible_wall:dig_tool",
    recipe = {
      {"default:diamond_block"},
      {"default:stick"},
      {"default:stick"},
    },
  })
end