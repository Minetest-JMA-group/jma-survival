------------
-- Pickaxes --
-----------

minetest.register_tool("more_pickaxes:ice_pickaxe", {
	description = "Ice Pickaxe",
	inventory_image = "ice_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_craft({
    output = "more_pickaxes:ice_pickaxe",
    recipe = {
            {'default:ice','default:ice','default:ice'},
            {'','default:stick',''},
            {'','default:stick',''},
    }
})

minetest.register_tool("more_pickaxes:sand_pickaxe", {
	description = "Sand Pickaxe",
	inventory_image = "sand_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.50, [2]=1.80, [3]=0.90}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_craft({
    output = "more_pickaxes:sand_pickaxe",
    recipe = {
            {'default:sand','default:sand','default:sand'},
            {'','default:stick',''},
            {'','default:stick',''},
    }
})

minetest.register_tool("more_pickaxes:water_pickaxe", {
	description = "Water Pickaxe",
	inventory_image = "water_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.4, [2]=1.2, [3]=0.60}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_craft({
    output = "more_pickaxes:water_pickaxe",
    recipe = {
            {'bucket:bucket_water','bucket:bucket_water','bucket:water'},
            {'','default:stick',''},
            {'','default:stick',''},
    }
})

minetest.register_tool("more_pickaxes:cactus_pickaxe", {
	description = "Cactus Pickaxe",
	inventory_image = "cactus_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[2]=2.0, [3]=1.00}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_craft({
    output = "more_pickaxes:cactus_pickaxe",
    recipe = {
            {'default:cactus','default:cactus','default:cactus'},
            {'','default:stick',''},
            {'','default:stick',''},
    }
})

minetest.register_tool("more_pickaxes:diamond_paxel", {
    description = "Diamond Paxel",
    inventory_image = "diamond_paxel.png",
    tool_capabilities = {
        full_punch_interval = 1.5,
        max_drop_level = 2,
        groupcaps = {
            cracky = {
                maxlevel = 3,
                uses = 1000,
                times = { [1]=0.10, [2]=0.10, [3]=0.10 }
            },
            crumbly = {
                maxlevel = 3,
                uses = 1000,
                times = { [1]=0.10, [2]=0.10, [3]=0.10 }
            },         
            choppy = {
                maxlevel = 3,
                uses = 1000,
                times = { [1]=0.10, [2]=0.10, [3]=0.10 }
            },         
        },
        damage_groups = {fleshy=2},
    },
    
})

minetest.register_craft({
    output = "more_pickaxes:diamond_paxel",
    recipe = {
            {'default:pickaxe_diamond','default:pickaxe_diamond','default:pickaxe_diamond'},
            {'','default:stick',''},
            {'','default:stick',''},
    }
})

minetest.register_tool("more_pickaxes:coal_pickaxe", {
	description = "Coal Pickaxe",
	inventory_image = "coal_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[2]=2.0, [3]=1.00}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_craft({
    output = "more_pickaxes:coal_pickaxe",
    recipe = {
            {'default:coal','default:coal','default:coal'},
            {'','default:coal',''},
            {'','default:coal',''},
    }
})

minetest.register_tool("more_pickaxes:supreme_pickaxe", {
	description = "Supreme Pickaxe",
	inventory_image = "supreme_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=0.10, [2]= 0.10, [3]=0.10}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_craft({
    output = "more_pickaxes:supreme_pickaxe",
    recipe = {
            {'default:goldblock','default:goldblock','default:goldblock'},
            {'','default:diamond',''},
            {'','default:diamond',''},
    }
})

minetest.register_tool("more_pickaxes:lava_pickaxe", {
	description = "Lava Pickaxe",
	inventory_image = "lava_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.4, [2]=1.2, [3]=0.60}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_craft({
    output = "more_pickaxes:lava_pickaxe",
    recipe = {
            {'bucket:bucket_water','bucket:bucket_water','bucket:bucket_water'},
            {'','default:stick',''},
            {'','default:stick',''},
    }
})