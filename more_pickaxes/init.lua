------------
-- Pickaxes --
-----------

minetest.register_tool("more_pickaxes:diamond_paxel", {
    description = "Diamond Paxel",
    inventory_image = "diamond_paxel.png",
    tool_capabilities = {
        full_punch_interval = 1.5,
        max_drop_level = 2,
        groupcaps = {
            cracky = {
                maxlevel = 3,
                uses = 100,
                times = { [1]=0.10, [2]=0.10, [3]=0.10 }
            },
            crumbly = {
                maxlevel = 3,
                uses = 100,
                times = { [1]=0.10, [2]=0.10, [3]=0.10 }
            },         
            choppy = {
                maxlevel = 3,
                uses = 100,
                times = { [1]=0.10, [2]=0.10, [3]=0.10 }
            },         
        },
        damage_groups = {fleshy=2},
    },
    
})

minetest.register_craft({
    output = "more_pickaxes:diamond_paxel",
    recipe = {
            {'default:pick_diamond','default:pick_diamond','default:pick_diamond'},
            {'default:diamondblock','default:stick','default:diamondblock'},
            {'default:diamondblock','default:stick','default:diamondblock'},
    }
})
