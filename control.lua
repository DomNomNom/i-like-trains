local function player_died(event)
    if not event.cause then return end
    if event.cause.type ~= 'locomotive' then return end
    local character = event.entity
    character.surface.play_sound{path="i-like-trains", position=character.position}
end

script.on_event(defines.events.on_entity_died, player_died, {
    {filter = "type", type = "character", mode="and"},
    {filter = "name", name = "character", mode="and"},
})