-----------------
-- Ores/blocks --
-----------------

minetest.register_node("gs_emerald:emerald_block", {
    description = ("Emerald Block"),
    tiles = {"gs_emerald_block.png"},
    is_ground_content = true,
    groups = {cracky = 3},
})

minetest.register_node("gs_emerald:emerald_ore", {
	description = ("Emerald Ore"),
	tiles = {"default_stone.png^gs_emerald_ore.png"},
	is_ground_content = true,
	groups = {cracky = 3},
	drop = "gs_emerald:emerald",
})

minetest.register_craftitem("gs_emerald:emerald", {
	description = ("Emerald"),
	inventory_image = "gs_emerald.png",
})

------------
-- Tools --
------------

minetest.register_tool("gs_emerald:emerald_sword", {
	description = "Emerald Sword",
	inventory_image = "gs_emerald_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("gs_emerald:emerald_pickaxe", {
	description = "Emerald Pickaxe",
	inventory_image = "gs_emerald_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("gs_emerald:emerald_axe", {
	description = "Emerald Axe",
	inventory_image = "gs_emerald_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.10, [2]=0.90, [3]=0.50}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("gs_emerald:emerald_shovel", {
	description = "Emerald Shovel",
	inventory_image = "gs_emerald_shovel.png",
	tool_capabilities = {
         full_punch_interval = 0.5,
	     max_drop_level=1,
		 groupcaps={
			 crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

-----------------
-- Mapgen --
-----------------

-- Amethyst Ore

      minetest.register_ore({
	          ore_type       = "scatter",
	          ore            = "gs_emerald:emerald_ore",
	          wherein        = "default:stone",
	          clust_scarcity = 15 * 15 * 15,
	          clust_num_ores = 4,
	          clust_size     = 3,
	          y_max          = -256,
	          y_min          = -31000,
	   })
	   
	  minetest.register_ore({
		      ore_type       = "scatter",
		      ore            = "gs_emerald:emerald_ore",
		      wherein        = "default:stone",
		      clust_scarcity = 17 * 17 * 17,
		      clust_num_ores = 4,
		      clust_size     = 3,
		      y_max          = -128,
		      y_min          = -255,
	   })

	  minetest.register_ore({
		       ore_type       = "scatter",
		       ore            = "gs_emerald:emerald_ore",
		       wherein        = "default:stone",
		       clust_scarcity = 15 * 15 * 15,
		       clust_num_ores = 4,
		       clust_size     = 3,
		       y_max          = -256,
		       y_min          = -31000,
	   })

-------------
-- Crafts --
-------------

-- Tools

minetest.register_craft({
	output = "gs_emerald:emerald_sword",
	recipe = {
		{"gs_emerald:emerald"},
		{"gs_emerald:emerald"},
		{"group:stick"},
	}
})

minetest.register_craft({
	output = "gs_emerald:emerald_pickaxe",
	recipe = {
		{"gs_emerald:emerald", "gs_emerald:emerald", "gs_emerald:emerald"},
		{"", "group:stick", ""},
		{"", "group:stick", ""},
	}
})

minetest.register_craft({
	output = "gs_emerald:emerald_shovel",
	recipe = {
		{"gs_emerald:emerald"},
		{"group:stick"},
		{"group:stick"},
	}
})

minetest.register_craft({
	output = "gs_emerald:emerald_axe",
	recipe = {
		{"gs_emerald:emerald", "gs_emerald:emerald"},
		{"gs_emerald:emerald", "group:stick"},
		{"", "group:stick"},
	}
})

minetest.register_craft({
	output = "gs_emerald:emerald_block",
	recipe = {
		{"gs_emerald:emerald", "gs_emerald:emerald", "gs_emerald:emerald"},
		{"gs_emerald:emerald", "gs_emerald:emerald", "gs_emerald:emerald"},
		{"gs_emerald:emerald", "gs_emerald:emerald", "gs_emerald:emerald"},
	}
})

minetest.register_craft({
	output = "gs_emerald:emerald 9",
	recipe = {
		{"gs_emerald:emerald_block"},
	}
})

-- Armor

minetest.register_craft({
	output = "gs_emerald:helmet_emerald",
	recipe = {
		{"gs_emerald:emerald", "gs_emerald:emerald", "gs_emerald:emerald"},
		{"gs_emerald:emerald", "", "gs_emerald:emerald"},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "gs_emerald:chestplate_emerald",
	recipe = {
		{"gs_emerald:emerald", "", "gs_emerald:emerald"},
		{"gs_emerald:emerald", "gs_emerald:emerald", "gs_emerald:emerald"},
		{"gs_emerald:emerald", "gs_emerald:emerald", "gs_emerald:emerald"},
	}
})

minetest.register_craft({
	output = "gs_emerald:leggings_emerald",
	recipe = {
		{"gs_emerald:emerald", "gs_emerald:emerald", "gs_emerald:emerald"},
		{"gs_emerald:emerald", "", "gs_emerald:emerald"},
		{"gs_emerald:emerald", "", "gs_emerald:emerald"},
	}
})

minetest.register_craft({
	output = "gs_emerald:boots_emerald",
	recipe = {
		{"gs_emerald:emerald", "", "gs_emerald:emerald"},
		{"gs_emerald:emerald", "", "gs_emerald:emerald"},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "gs_emerald:shield_emerald",
	recipe = {
		{"gs_emerald:emerald", "", "gs_emerald:emerald"},
		{"gs_emerald:emerald", "gs_emerald:emerald", "gs_emerald:emerald"},
		{"", "gs_emerald:emerald", ""},
	}
})

-----------------------
-- 3D Armor support --
-----------------------

if minetest.get_modpath("3d_armor") then
	armor:register_armor("gs_emerald:helmet_emerald", {
		description = ("Emerald Helmet"),
		inventory_image = "gs_emerald_helmet_inv.png",
		groups = {armor_head=1, armor_heal=16, armor_use=70},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=1, level=6},
    })

	armor:register_armor("gs_emerald:leggings_emerald", {
		description = ("Emerald Leggings"),
		inventory_image = "gs_emerald_leggings_inv.png",
		groups = {armor_legs=1, armor_heal=16, armor_use=70},
		armor_groups = {fleshy=30},
		damage_groups = {cracky=2, snappy=1, level=6},
	})

	armor:register_armor("gs_emerald:chestplate_emerald", {
		description = ("Emerald Chestplate"),
		inventory_image = "gs_emerald_chestplate_inv.png",
		groups = {armor_torso=1, armor_heal=16, armor_use=70},
		armor_groups = {fleshy=30},
		damage_groups = {cracky=2, snappy=1, level=6},
	})

		armor:register_armor("gs_emerald:boots_emerald", {
		description = ("Emerald Boots"),
		inventory_image = "gs_emerald_boots_inv.png",
		groups = {armor_feet=1, armor_heal=16, armor_use=70, physics_speed=1, physics_jump=1},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=1, level=6},
	})

		armor:register_armor("gs_emerald:shield_emerald", {
			description = ("Emerald Shield"),
			inventory_image = "gs_emerald_shield_inv.png",
			groups = {armor_shield=1, armor_heal=12, armor_use=70},
			armor_groups = {fleshy=10},
			damage_groups = {cracky=2, snappy=1, level=6},
	})

end
