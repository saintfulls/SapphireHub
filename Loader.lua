local function loadScriptFromGitHub(url)
    local success, response = pcall(function()
        return game:HttpGet(url, true)
    end)

    if success then
        loadstring(response)()
    else
        warn("Failed to load the script from GitHub: " .. response)
    end
end


local placeId = game.GameId
local scriptURLs = {
    [6558526079] = "https://raw.githubusercontent.com/saintfulls/SapphireHub/main/UI/Scripts/AWTD.lua", 
    [16146832113] = "https://raw.githubusercontent.com/saintfulls/SapphireHub/main/UI/Scripts/AV.lua",
    [5479908441] = "https://raw.githubusercontent.com/saintfulls/zregrzezb/refs/heads/main/add3"
}

if scriptURLs[placeId] then
    loadScriptFromGitHub(scriptURLs[placeId])
else
    print("No script configured for this place ID.")
end
