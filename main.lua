local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "Serhii X",
    Icon = "target",
    Author = "by Serhii",
    Folder = "Serhii X",
    Transparent = true,
    Theme = "Dark",
    BackgroundImageTransparency = 0.42,
    
    User = {
        Enabled = true,
        Anonymous = false,
    },
})

local OpenButtonWindow = Window:EditOpenButton({
    Title = "Serhii X",
    Icon = "target",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"), 
        Color3.fromHex("F89B29")
    ),
    OnlyMobile = true,
    Enabled = true,
    Draggable = true,
})

-- Tabs

local TabMain = Window:Tab({
    Title = "Main",
    Icon = "target"
})

local TabVisuals = Window:Tab({
    Title = "Visuals",
    Icon = "eye"
})

local TabScripts = Window:Tab({
    Title = "Scripts",
    Icon = "atom"
})

local TabMisc = Window:Tab({
    Title = "Misc",
    Icon = "boxes"
})

Window:Divider()

local TabInfo = Window:Tab({
    Title = "Information",
    Icon = "info"
})

local TabSettings = Window:Tab({
    Title = "Settings",
    Icon = "cog"
})

-- Things

TabInfo:Paragraph({
    Title = "About Serhii X",
    Desc = "Serhii X is a script that some guy named Serhii made. thats literally it.",
    Buttons = {
        {
        Title = "Go to main",
        Callback = function() TabMain:Select() end,
        }
    }
})

TabSettings:Dropdown({
    Title = "Theme",
    Values = {"Dark","Light","Amber","Emerald","Violet","Red"},
    Value = "Dark",
    Callback = function(themeselected)
        WindUI:SetTheme(themeselected)
        end
})

TabSettings:Keybind({
    Title = "UI Keybind",
    Desc = "Open/close keybind",
    Value = "RightAlt",
    Callback = function(v)
        Window:SetToggleKey(Enum.KeyCode[v])
    end
})

TabSettings:Button({
    Title = "Force close",
    Desc = "If normal close button breaks, then it forcefully closes the UI.",
    Callback = function()
WindUI:Popup({
    Title = "Are you sure?",
    Icon = "triangle-alert",
    Content = "Are you sure you want to force close Serhii X?",
    Buttons = {
        {
            Title = "Cancel",
            Callback = function() end,
            Variant = "Tertiary",
        },
        {
            Title = "Continue",
            Icon = "arrow-right",
            Callback = function() Window:Destroy() end,
            Variant = "Primary",
        }
    }
})
        end
})

TabScripts:Button({
    Title = "Voidware (99 Nights in the forest)",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VWExtra/main/NightsInTheForest.lua", true))()
    end
})

TabScripts:Button({
    Title = "Z3US (Shooter games)",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/blackowl1231/Z3US/refs/heads/main/main.lua"))()
    end
})

TabMisc:Toggle({
    Title = "Server Desync (Macsploit)",
    Desc = "artfical lag is the best way to describe it",
    Callback = function(state)
            server_desync(state)
        end
})

TabMain:Input({
    Title = "Player",
    Desc = "Player to teleport to",
    Type = "Input",
    Placeholder = "Enter player name...",
    Callback = function(input) 
        local targetPlayerToTpTo = input
    end
})

TabMain:Button({
    Title = "Teleport to player",
    Callback = function()
          game.Players.Localplayer.Character:MoveTo(game.Players[targetPlayerToTpTo].Character)
        end
})

TabInfo:Select()
