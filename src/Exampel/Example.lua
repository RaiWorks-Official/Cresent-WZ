local Ui = loadstring(game:HttpGet('https://raw.githubusercontent.com/ru-3/W-Azeox-Ui/refs/heads/main/src/ui/Ui.lua'))()

Ui:CreateTheme('Neon', {
    Accent = Color3.fromRGB(0, 255, 180),
    AccentText = Color3.fromRGB(0, 0, 0),
    Success = Color3.fromRGB(0, 255, 180),
    Selected = Color3.fromRGB(18, 48, 42),
    Hover = Color3.fromRGB(14, 34, 30),
}, 'Dark')

Ui:CreateTheme('Purple', {
    Accent = Color3.fromRGB(160, 120, 255),
    AccentText = Color3.fromRGB(255, 255, 255),
    Success = Color3.fromRGB(160, 120, 255),
    Selected = Color3.fromRGB(38, 28, 60),
    Hover = Color3.fromRGB(26, 20, 42),
}, 'Dark')

local Window = Ui:CreateWindow({
    Title = 'Zeox',
    Version = Ui.Version,
    Theme = 'Obsidian',
    SidebarTitle = 'Explorer',
    SearchPlaceholder = 'Search anything...',
    Size = UDim2.new(0, 900, 0, 560),
    FloatingToggle = {
        Icon = Ui.Icons.spark,
        Size = 48,
        Position = UDim2.new(0, 20, 0.5, -24),
    },
})

Window:BindToggleKey(Enum.KeyCode.RightShift)

local Home = Window:CreateTab({Name = 'Home', Icon = Ui.Icons.home})

local cards = Home:CreateCards({
    Title = 'Quick Actions',
    Columns = 2,
    Gap = 10,
    CardHeight = 76,
    Cards = {
        {
            Name = 'Auto Farm',
            Description = 'Start automatic farming',
            Icon = Ui.Icons.spark,
            Callback = function()
                Window:Notify({Title = 'Farm', Text = 'Auto Farm enabled', Duration = 3})
            end,
        },
        {
            Name = 'Speed Boost',
            Description = 'Increase player speed',
            Icon = Ui.Icons.speed,
            Callback = function()
                Window:Notify({Title = 'Speed', Text = 'Speed boost enabled', Duration = 3})
            end,
        },
        {
            Name = 'Teleports',
            Description = 'Open teleport locations',
            Icon = Ui.Icons.globe,
            Callback = function()
                Window:Notify({Title = 'Teleports', Text = 'Teleport list opened', Duration = 3})
            end,
        },
        {
            Name = 'Executor',
            Description = 'Run custom scripts',
            Icon = Ui.Icons.code,
            Callback = function()
                Window:Notify({Title = 'Executor', Text = 'Executor opened', Duration = 3})
            end,
        },
    },
})

cards:AddCard({
    Name = 'Rejoin',
    Description = 'Rejoin the current server',
    Icon = Ui.Icons.refresh,
    Callback = function()
        Window:Notify({Title = 'Rejoin', Text = 'Rejoining server...', Duration = 3})
    end,
})

local Main = Window:CreateTab({Name = 'Main', Icon = Ui.Icons.box})
local general = Main:CreateSection('General')

general:CreateButton({
    Name = 'Execute',
    Icon = Ui.Icons.run,
    Callback = function()
        Window:Notify({Title = 'Execute', Text = 'Script executed', Duration = 3})
    end,
})

home:CreateToggle({
    Name = 'Auto Reconnect',
    Default = true,
    Callback = function(state)
        print('Auto Reconnect:', state)
    end,
})

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

home:CreateInput({
    Name = 'Player Name',
    Placeholder = 'Type a name...',
    Callback = function(text)
        print('Player Name:', text)
    end,
})

local visuals = Main:CreateSection('Visuals')

visuals:CreateCards({
    Columns = 3,
    CardHeight = 70,
    Cards = {
        {
            Name = 'ESP',
            Description = 'Show players through walls',
            Icon = Ui.Icons.star,
            Callback = function()
                Window:Notify({Title = 'ESP', Text = 'ESP toggled', Duration = 3})
            end,
        },
        {
            Name = 'Fullbright',
            Description = 'Maximum lighting',
            Icon = Ui.Icons.magic,
            Callback = function()
                game.Lighting.Brightness = 3
                game.Lighting.ClockTime = 12
            end,
        },
        {
            Name = 'No Fog',
            Description = 'Remove distance fog',
            Icon = Ui.Icons.layers,
            Callback = function()
                game.Lighting.FogEnd = 100000
            end,
        },
    },
})

local bottom = Main:CreateSection('Bottom Test')

bottom:CreateDropdown({
    Name = 'Long List',
    Options = {'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten'},
    Default = 'One',
    Callback = function(option)
        print('Picked:', option)
    end,
})

local Tools = Window:CreateNavTab({Name = 'Tools', Icon = Ui.Icons.terminal})

Tools:CreateCards({
    Title = 'Tools',
    Columns = 2,
    CardHeight = 74,
    Cards = {
        {
            Name = 'Executor',
            Description = 'Run a script',
            Icon = Ui.Icons.code,
            Callback = function()
                Window:Notify({Title = 'Executor', Text = 'Executor opened', Duration = 3})
            end,
        },
        {
            Name = 'Console',
            Description = 'View error logs',
            Icon = Ui.Icons.terminal,
            Callback = function()
                Window:Notify({Title = 'Console', Text = 'Console opened', Duration = 3})
            end,
        },
        {
            Name = 'Rejoin',
            Description = 'Rejoin the server',
            Icon = Ui.Icons.refresh,
            Callback = function()
                Window:Notify({Title = 'Rejoin', Text = 'Rejoining server...', Duration = 3})
            end,
        },
        {
            Name = 'Server Hop',
            Description = 'Switch to another server',
            Icon = Ui.Icons.globe,
            Callback = function()
                Window:Notify({Title = 'Server Hop', Text = 'Searching for a server...', Duration = 3})
            end,
        },
    },
})

local Settings = Window:CreateTab({Name = 'Settings', Icon = Ui.Icons.settings})
local theme = Settings:CreateSection('Theme & Colors')

theme:CreateDropdown({
    Name = 'Theme',
    Options = {'Dark', 'Light', 'Neon', 'Purple'},
    Default = 'Dark',
    Callback = function(option)
        Ui:SetTheme(option)
    end,
})

theme:CreateDropdown({
    Name = 'Accent Color',
    Options = {'White', 'Green', 'Purple', 'Orange', 'Blue', 'Red'},
    Default = 'White',
    Callback = function(option)
        local map = {
            White = Color3.fromRGB(255, 255, 255),
            Green = Color3.fromRGB(0, 255, 180),
            Purple = Color3.fromRGB(160, 120, 255),
            Orange = Color3.fromRGB(255, 150, 60),
            Blue = Color3.fromRGB(90, 160, 255),
            Red = Color3.fromRGB(255, 90, 90),
        }

        Ui:SetAccent(map[option], Color3.fromRGB(0, 0, 0))
    end,
})

theme:CreateButton({
    Name = 'Custom Colors',
    Icon = Ui.Icons.palette,
    Callback = function()
        Ui:SetColors({
            Background = Color3.fromRGB(6, 8, 14),
            Sidebar = Color3.fromRGB(10, 13, 22),
            Elevated = Color3.fromRGB(20, 26, 40),
            Stroke = Color3.fromRGB(46, 58, 84),
            Accent = Color3.fromRGB(90, 160, 255),
        })
        Window:Notify({Title = 'Colors', Text = 'Custom colors applied', Duration = 3})
    end,
})

local win = Settings:CreateSection('Window')

win:CreateButton({
    Name = 'Toggle Sidebar',
    Icon = Ui.Icons.tab,
    Callback = function()
        Window:ToggleSidebar()
    end,
})

win:CreateButton({
    Name = 'Fullscreen / Maximize',
    Icon = Ui.Icons.maximize,
    Callback = function()
        Window:Maximize()
    end,
})

win:CreateButton({
    Name = 'Hide UI',
    Icon = Ui.Icons.close,
    Callback = function()
        Window:Hide()
    end,
})

Window:CreateStatusBar({'No Errors', 'Ready'}, Ui.Name .. ' ' .. Ui.Version)
Window:SelectTab(1)

Window:Notify({
    Title = Ui.Name,
    Text = 'Loaded successfully',
    Duration = 4,
})
