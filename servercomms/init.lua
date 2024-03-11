minetest.register_privilege("servercomms", {
	description = "Can execute certain commands on the server machine."
})

minetest.register_chatcommand("poweroff", {
	description = "Turn off the server machine",
	privs = {
		servercomms = true,
	},
	func = function(name, param)
		local env = assert(minetest.request_insecure_environment(), "Servercomms needs to be added to secure.trusted_mods")
		env.os.execute("poweroff")
	end,
})
