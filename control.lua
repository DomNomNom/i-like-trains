function player_died(event)
    if event.cause.type ~= 'locomotive' then return end
    if event.force.name ~= 'player' then return end
    local player = game.players[event.force.index]
    player.surface.play_sound{path = "i-like-trains", position = player.position}
end

script.on_event(defines.events.on_entity_died, player_died, {
    {filter = "type", type = "character", mode="and"},
    {filter = "name", name = "character", mode="and"},
})