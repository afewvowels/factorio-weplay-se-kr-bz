function initPlayer(player)
  if player.character == nil then return end
	if global == nil then
		global = {}
	end
	if global.donePlayers == nil then
		global.donePlayers = {}
	end
	if global.donePlayers[player] ~= nil then return end
	global.donePlayers[player] = true

	player.get_inventory(defines.inventory.character_main).clear()
	player.get_inventory(defines.inventory.character_armor).clear()
	player.get_inventory(defines.inventory.character_guns).clear()
	player.get_inventory(defines.inventory.character_ammo).clear()

	local items = {
		-- resources
    {"rocket-fuel",20},
    {"cliff-explosives", 20},
		-- belts
		-- pipes
		-- other logistic
		{"construction-robot",50},
		{"5d-fusion-reactor-equipment-10",4},
    {"5d-personal-roboport-equipment-10",3},
    {"energy-shield-mk4-equipment",4},
    {"5d-battery-equipment-10", 3},
    {"jetpack-1",24},
    {"5d-personal-laser-defense-equipment-10",10},
    {"5d-personal-tesla-defense-equipment-10",10},
		-- buildings
		-- electricity
		-- equipment
		{"se-thruster-suit-4",1},
		{"superior-exoskeleton-equipment",2},
		{"infinity-chest", 50},
		{"belt-immunity-equipment",1},
		{"imersite-night-vision-equipment",1}
	}

	for _, v in pairs(items) do
		player.insert{name = v[1], count = v[2]}
	end

  player.force.technologies["weplay-starting-tech-enhancements"].researched = true

  player.force.character_build_distance_bonus = 100
  player.force.character_reach_distance_bonus = 100
  player.force.character_resource_reach_distance_bonus = 100
end

function onPlayerJoined(event)
	local player = game.players[event.player_index]
	initPlayer(player)
end

script.on_event({defines.events.on_player_joined_game, defines.events.on_player_created}, onPlayerJoined)

function onModInit()
	if remote.interfaces["freeplay"] then
		remote.call("freeplay", "set_disable_crashsite", true)
		remote.call("freeplay", "set_skip_intro", true)
	end
end

script.on_init(onModInit)