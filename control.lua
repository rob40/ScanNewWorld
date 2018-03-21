Scan_size = settings.startup["InitialScan-ChunkScan"].value --Scan size in chunks

script.on_event(defines.events.on_player_created, function(event)
  local player = game.players[event.player_index]
  player.force.chart(player.surface, {{player.position.x - Scan_size, player.position.y - Scan_size}, {player.position.x + Scan_size, player.position.y + Scan_size}})
end)