Scan_size = settings.startup["InitialScan-ChunkScan"].value --Scan size in chunks

script.on_event(defines.events.on_player_created, function(event)
  if event.player_index == 1 then
    global.scan_starting_area = true
  end
end)

script.on_event(defines.events.on_tick, function(event)
  scan()
end)

function scan()
  if not global.scan_starting_area then return end
  local player = game.players[1]
  local f = player.force
  local s = player.surface
  local z = Scan_size/2
  f.chart(s, {{-Scan_size, -Scan_size}, {Scan_size, Scan_size}})
end