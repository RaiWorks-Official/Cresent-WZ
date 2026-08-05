# **Zeox UI Library Release**
---
![Relasse v1.0.0](https://raw.githubusercontent.com/ru-3/W-Azeox-Ui/refs/heads/main/banner2.png)

Modern and powerful UI Library for Roblox.
Zeox UI is a highly customizable and modern UI framework built for Roblox developers, allowing you to create clean, professional, and visually appealing interfaces with ease.
Designed with flexibility and performance in mind, Zeox UI provides a simple yet powerful system for building advanced 
Roblox experiences with beautiful layouts, smooth interactions, and full customization support.

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
local Ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/ru-3/W-Azeox-Ui/refs/heads/main/src/ui/Ui.lua"))()
```

### Custom Colors

```lua
Ui:CreateTheme('Neon', {
    Accent = Color3.fromRGB(0, 255, 180),
    AccentText = Color3.fromRGB(0, 0, 0),
    Success = Color3.fromRGB(0, 255, 180),
    Selected = Color3.fromRGB(18, 48, 42),
    Hover = Color3.fromRGB(14, 34, 30),
```

### Create Window


```lua
local Window = Ui:CreateWindow({
    Title = 'W-Azeox',
    Version = Ui.Version,
    Theme = 'Obsidian', -- Dark , DarkRed , Light , Obsidian And Moore
    SidebarTitle = 'Explorer',
    SearchPlaceholder = 'Search anything...',
    Size = UDim2.new(0, 900, 0, 560),
    FloatingToggle = {
        Icon = Ui.Icons.spark,
        Size = 48,
        Position = UDim2.new(0, 20, 0.5, -24),
    },
})
```

### Create Tab


```lua
local Home = Window:CreateTab({Name = 'Home', Icon = Ui.Icons.home})
```

### Create Card Button 

```lua
home:AddCard({
    Name = 'Rejoin',
    Description = 'Rejoin the current server',
    Icon = Ui.Icons.refresh,
    Callback = function()
        Window:Notify({Title = 'Rejoin', Text = 'Rejoining server...', Duration = 3})
    end,
})
```

### Create Normal Button

```lua
home:CreateButton({
    Name = 'Execute',
    Icon = Ui.Icons.run,
    Callback = function()
        Window:Notify({Title = 'Execute', Text = 'Script executed', Duration = 3})
    end,
})
```
### Create Toggle

```lua
home:CreateToggle({
    Name = 'Auto Reconnect',
    Default = true,
    Callback = function(state)
        print('Auto Reconnect:', state)
    end,
})
```

### Create Slider

```lua
home:CreateSlider({
    Name = 'WalkSpeed',
    Min = 16,
    Max = 200,
    Default = 16,
    Callback = function(value)
        local character = game.Players.LocalPlayer.Character

        if character and character:FindFirstChild('Humanoid') then
            character.Humanoid.WalkSpeed = value
        end
    end,
})
```
### Create Input

```lua
home:CreateInput({
    Name = 'Player Name',
    Placeholder = 'Type a name...',
    Callback = function(text)
        print('Player Name:', text)
    end,
})
```
### Create Dropdown

```lua
home:CreateDropdown
    Name = 'Long List',
    Options = {'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten'},
    Default = 'One',
    Callback = function(option)
        print('Picked:', option)
    end,
})
```
### Create Notification

```lua
home:Notify({
    Title = Ui.Name,
    Text = 'Loaded successfully',
    Duration = 4,
})
```
### Create Status Bar

```lua
home:CreateStatusBar({'No Errors', 'Ready'}, Ui.Name .. ' ' .. Ui.Version)
```
## Credits

Created by:
Zeox

Special thanks to contributors.

---

## Preview

![Zeox UI Preview](https://raw.githubusercontent.com/ru-3/W-Azeox-Ui/refs/heads/main/banner.png)

## License

MIT License

