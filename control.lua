-- Handles tinting of spidertrons after restoring base game spidertron graphics to the 'trons added from Spidertron Tiers Community Updates.
require("mods/spidertron-tiers/set-initial-color")

remote.add_interface("weplay_se_kr_bz", {
  jetpack_fuels = function() return {["shielded-plutonium-jetpack-fuel"] = 1.2} end
})

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

	local powerArmorStart = {
		-- resources
    {"shielded-plutonium-jetpack-fuel",100},
    {"cliff-explosives", 100},
		-- belts
		-- pipes
		-- other logistic
		{"construction-robot",50},
		{"5d-fusion-reactor-equipment-01",4},
    {"5d-personal-roboport-equipment-01",3},
    {"5d-energy-shield-equipment-01",1},
    {"5d-battery-equipment-01", 3},
    {"jetpack-1",24},
    {"personal-laser-defense-equipment",4},
    {"5d-personal-tesla-defense-equipment-01",4},
		-- buildings
		-- electricity
		-- equipment
		{"5d-power-armor-01",1},
		{"exoskeleton-equipment",2},
		{"infinity-chest", 50},
		{"belt-immunity-equipment",1},
		{"imersite-night-vision-equipment",1}
	}

  local vanillaStartItems = {
    {"shielded-plutonium-jetpack-fuel",100},
    {"cliff-explosives", 100},
		{"construction-robot",50},
    {"solar-panel-equipment", 2},
    {"light-armor", 1},
    {"jetpack-1", 4},
    {"5d-battery-equipment-01", 3},
    {"exoskeleton-equipment", 1},
    {"5d-personal-roboport-equipment-01", 2},
		{"infinity-chest", 50},
		{"belt-immunity-equipment",1},
		{"imersite-night-vision-equipment",1}
  }

  local items = nil

  if settings.startup["powerArmorStart"].value then
    items = powerArmorStart
  else
    items = vanillaStartItems
  end

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
