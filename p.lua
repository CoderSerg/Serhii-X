local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "Serhii XP",
    Icon = "moon-star",
    Author = "by Serhii",
    Folder = "SerhiiXP",
    Transparent = true,
    Theme = "Dark",
    Resizable = true,
    HideSearchBar = false,
    
    User = {
        Enabled = true,
        Anonymous = false,
        },
    
    KeySystem = { 
        Key = { "qxhULyUm" },
        Note = "Enter key",
        URL = "https://discord.gg/CpgzuFygMb",
    },
})

Window:Tab({
    Title = "Main",
    Icon = "moon-star"
})
