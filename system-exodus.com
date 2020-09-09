local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
     Title = "exodus",
     Style = 3,
     SizeX = 500,
     SizeY = 350,
     Theme = "Light"
})

local Page = UI.New({
    Title = "UI's"
})

Page.Button({
    Text = "Example",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ChrisvanChip/MaterialLua/master/Example.lua"))();
    end
})

Page.Button({
    Text = "Example 2",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Minecraft18363/one-punch-man-Destiny/master/Example"))();
    end
})

Page.Button({
    Text = "Lumber tycoon 2",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Minecraft18363/one-punch-man-Destiny/master/Blood_updates"))();
    end
})

Page.Button({
    Text = "scripts",
    Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Minecraft18363/one-punch-man-Destiny/master/scripts"))();
end
})

Page.Button({
    Text = "Epic",
    Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Minecraft18363/one-punch-man-Destiny/master/Epic"))();
end
})

local Page = UI.New({
    Title = "exodus-link"
})

Page.Button({
    Text = "exodus/hub",
    Callback = function()
     setclipboard("https://www.system-exodus.com/hub.html")
end
})

local Page = UI.New({
    Title = "Islands (Skyblock)"
})

Page.Button({
    Text = "Islands",
    Callback = function()
        loadstring(game:HttpGet(('https://system-exodus.com/scripts/Islands/Islands.lua'), true))()
    end
})

local Page = UI.New({
    Title = "NinjaLegends"
})

Page.Button({
    Text = "NinjaLegendsV3",
    Callback = function()
        loadstring(game:HttpGet(('https://system-exodus.com/scripts/ninjalegends/NinjaLegendsV3.lua'), true))()
    end
})

local Page = UI.New({
    Title = "MadCity"
})

Page.Button({
    Text = "MadLads",
    Callback = function()
        loadstring(game:HttpGet(('https://system-exodus.com/scripts/madlads/MadLads.lua'), true))()
    end
})

Page.Button({
    Text = "MadLadsAR",
    Callback = function()
        loadstring(game:HttpGet(('https://system-exodus.com/scripts/madlads/MadLadsAR.lua'), true))()
    end
})

