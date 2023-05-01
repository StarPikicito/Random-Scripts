local success, res = pcall(function()
    return loadstring(game:HttpGet(string.format("https://visionhub.dev/games/%s.lua", game.PlaceId))) or loadstring(game:HttpGet(string.format("https://visionhub.dev/games/%s.lua", game.GameId))) 
end)

if success then
	warn("Vision: Loading script for game: ",game.PlaceId)
end

if not success or not res then
    warn("Vision: Detected game unsupported, loading Universal...")
    return loadstring(game:HttpGet("https://visionhub.dev/games/universal.lua",true))()
end

res()
