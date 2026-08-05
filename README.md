# **Zeox Ui Libaray Relasse**
---
Modern and powerful UI Library for Roblox.
Zeox UI is a highly customizable and modern UI framework built for Roblox developers, allowing you to create clean, professional, and visually appealing interfaces with ease.
Designed with flexibility and performance in mind, Zeox UI provides a simple yet powerful system for building advanced Roblox experiences with beautiful layouts, smooth interactions, and full customization support.
---
## Features

- Modern UI Design
- Glassmorphism Cards
- Dark and Light Themes
- Mobile and PC Support
- Smooth Animations
- Customizable Colors
- Window System
- Tabs
- Buttons
- Toggles
- Sliders
- Dropdowns
- Notifications
- Keybind Support
- Easy Customization
---


## Installation

```lua
local ZeoxUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/ru-3/W-Azeox-Ui/main/src/ZeoxUI.lua"
))()
```

### Quick Example

```lua
local Window = ZeoxUI:CreateWindow({
    Title = "Zeox UI",
    Version = "v1.0.0",
    Theme = "Dark"
})

local Tab = Window:CreateTab({
    Name = "Main"
})

Tab:CreateButton({
    Name = "Hello World",
    Callback = function()
        print("Hello from Zeox UI")
    end
})
```
