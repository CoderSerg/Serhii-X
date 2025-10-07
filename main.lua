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

-- Tabs

local TabMain = Window:Tab({
    Title = "Main",
    Icon = "target"
})

local TabVisuals = Window:Tab({
    Title = "Visuals",
    Icon = "eye"
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

TabInfo:Select()
