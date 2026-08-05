local Ui = {}

Ui.__index = Ui
Ui.Name = 'Zeox Ui'
Ui.Version = 'v1.0.0'

local TweenService = game:GetService('TweenService')
local UserInputService = game:GetService('UserInputService')
local RunService = game:GetService('RunService')
local Players = game:GetService('Players')
local CoreGui = game:GetService('CoreGui')
local TextService = game:GetService('TextService')
local LocalPlayer = Players.LocalPlayer

Ui.Themes = {
    Dark = {
        Name = 'Dark',
        Background = Color3.fromRGB(0, 0, 0),
        Sidebar = Color3.fromRGB(8, 8, 8),
        Panel = Color3.fromRGB(16, 16, 16),
        PanelAlt = Color3.fromRGB(24, 24, 24),
        Elevated = Color3.fromRGB(32, 32, 32),
        Stroke = Color3.fromRGB(64, 64, 64),
        Text = Color3.fromRGB(255, 255, 255),
        SubText = Color3.fromRGB(190, 190, 190),
        Dim = Color3.fromRGB(140, 140, 140),
        Accent = Color3.fromRGB(255, 255, 255),
        AccentText = Color3.fromRGB(0, 0, 0),
        Success = Color3.fromRGB(255, 255, 255),
        Danger = Color3.fromRGB(230, 230, 230),
        Hover = Color3.fromRGB(38, 38, 38),
        Selected = Color3.fromRGB(52, 52, 52),
        TrackEmpty = Color3.fromRGB(48, 48, 48),
        Glass = Color3.fromRGB(255, 255, 255),
        GlassStroke = Color3.fromRGB(255, 255, 255),
        GlassAlpha = 0.9,
        GlassHoverAlpha = 0.84,
    },
    Light = {
        Name = 'Light',
        Background = Color3.fromRGB(255, 255, 255),
        Sidebar = Color3.fromRGB(250, 250, 250),
        Panel = Color3.fromRGB(255, 255, 255),
        PanelAlt = Color3.fromRGB(244, 244, 244),
        Elevated = Color3.fromRGB(236, 236, 236),
        Stroke = Color3.fromRGB(205, 205, 205),
        Text = Color3.fromRGB(0, 0, 0),
        SubText = Color3.fromRGB(80, 80, 80),
        Dim = Color3.fromRGB(130, 130, 130),
        Accent = Color3.fromRGB(0, 0, 0),
        AccentText = Color3.fromRGB(255, 255, 255),
        Success = Color3.fromRGB(0, 0, 0),
        Danger = Color3.fromRGB(40, 40, 40),
        Hover = Color3.fromRGB(238, 238, 238),
        Selected = Color3.fromRGB(224, 224, 224),
        TrackEmpty = Color3.fromRGB(224, 224, 224),
        Glass = Color3.fromRGB(0, 0, 0),
        GlassStroke = Color3.fromRGB(0, 0, 0),
        GlassAlpha = 0.94,
        GlassHoverAlpha = 0.9,
    },
DarkRed = {
    Name = 'DarkRed',
    Background = Color3.fromRGB(15, 15, 15),
    Sidebar = Color3.fromRGB(20, 20, 20),
    Panel = Color3.fromRGB(18, 18, 18),
    PanelAlt = Color3.fromRGB(30, 30, 30),
    Elevated = Color3.fromRGB(40, 40, 40),
    Stroke = Color3.fromRGB(120, 0, 0),
    Text = Color3.fromRGB(255, 255, 255),
    SubText = Color3.fromRGB(170, 170, 170),
    Dim = Color3.fromRGB(100, 100, 100),
    Accent = Color3.fromRGB(220, 0, 0),
    AccentText = Color3.fromRGB(255, 255, 255),
    Success = Color3.fromRGB(220, 0, 0),
    Danger = Color3.fromRGB(180, 0, 0),
    Hover = Color3.fromRGB(45, 10, 10),
    Selected = Color3.fromRGB(70, 10, 10),
    TrackEmpty = Color3.fromRGB(50, 50, 50),
    Glass = Color3.fromRGB(10, 10, 10),
    GlassStroke = Color3.fromRGB(220, 0, 0),
    GlassAlpha = 0.94,
    GlassHoverAlpha = 0.9,
},
Crimson = {
    Name = 'Crimson',
    Background = Color3.fromRGB(12, 12, 12),
    Sidebar = Color3.fromRGB(18, 18, 18),
    Panel = Color3.fromRGB(20, 20, 20),
    PanelAlt = Color3.fromRGB(30, 15, 15),
    Elevated = Color3.fromRGB(40, 20, 20),
    Stroke = Color3.fromRGB(180, 0, 0),
    Text = Color3.fromRGB(255, 255, 255),
    SubText = Color3.fromRGB(170, 170, 170),
    Dim = Color3.fromRGB(100, 100, 100),
    Accent = Color3.fromRGB(220, 0, 0),
    AccentText = Color3.fromRGB(255, 255, 255),
    Success = Color3.fromRGB(220, 0, 0),
    Danger = Color3.fromRGB(150, 0, 0),
    Hover = Color3.fromRGB(50, 10, 10),
    Selected = Color3.fromRGB(70, 10, 10),
    TrackEmpty = Color3.fromRGB(45, 45, 45),
    Glass = Color3.fromRGB(10, 10, 10),
    GlassStroke = Color3.fromRGB(220, 0, 0),
    GlassAlpha = 0.94,
    GlassHoverAlpha = 0.9,
},
Ruby = {
    Name = 'Ruby',
    Background = Color3.fromRGB(15, 5, 5),
    Sidebar = Color3.fromRGB(25, 8, 8),
    Panel = Color3.fromRGB(30, 10, 10),
    PanelAlt = Color3.fromRGB(45, 15, 15),
    Elevated = Color3.fromRGB(60, 20, 20),
    Stroke = Color3.fromRGB(255, 40, 40),
    Text = Color3.fromRGB(255, 255, 255),
    SubText = Color3.fromRGB(190, 190, 190),
    Dim = Color3.fromRGB(120, 120, 120),
    Accent = Color3.fromRGB(255, 30, 30),
    AccentText = Color3.fromRGB(255, 255, 255),
    Success = Color3.fromRGB(255, 30, 30),
    Danger = Color3.fromRGB(200, 0, 0),
    Hover = Color3.fromRGB(80, 15, 15),
    Selected = Color3.fromRGB(100, 20, 20),
    TrackEmpty = Color3.fromRGB(60, 30, 30),
    Glass = Color3.fromRGB(15, 5, 5),
    GlassStroke = Color3.fromRGB(255, 30, 30),
    GlassAlpha = 0.94,
    GlassHoverAlpha = 0.9,
},
Obsidian = {
    Name = 'Obsidian',
    Background = Color3.fromRGB(8, 8, 8),
    Sidebar = Color3.fromRGB(12, 12, 12),
    Panel = Color3.fromRGB(16, 16, 16),
    PanelAlt = Color3.fromRGB(25, 25, 25),
    Elevated = Color3.fromRGB(35, 35, 35),
    Stroke = Color3.fromRGB(90, 0, 0),
    Text = Color3.fromRGB(255, 255, 255),
    SubText = Color3.fromRGB(160, 160, 160),
    Dim = Color3.fromRGB(90, 90, 90),
    Accent = Color3.fromRGB(170, 0, 0),
    AccentText = Color3.fromRGB(255, 255, 255),
    Success = Color3.fromRGB(170, 0, 0),
    Danger = Color3.fromRGB(120, 0, 0),
    Hover = Color3.fromRGB(35, 5, 5),
    Selected = Color3.fromRGB(55, 8, 8),
    TrackEmpty = Color3.fromRGB(40, 40, 40),
    Glass = Color3.fromRGB(5, 5, 5),
    GlassStroke = Color3.fromRGB(170, 0, 0),
    GlassAlpha = 0.94,
    GlassHoverAlpha = 0.9,
},
Inferno = {
    Name = 'Inferno',
    Background = Color3.fromRGB(10, 5, 5),
    Sidebar = Color3.fromRGB(20, 10, 10),
    Panel = Color3.fromRGB(25, 12, 12),
    PanelAlt = Color3.fromRGB(40, 18, 15),
    Elevated = Color3.fromRGB(55, 25, 20),
    Stroke = Color3.fromRGB(255, 80, 0),
    Text = Color3.fromRGB(255, 255, 255),
    SubText = Color3.fromRGB(180, 180, 180),
    Dim = Color3.fromRGB(100, 100, 100),
    Accent = Color3.fromRGB(255, 60, 0),
    AccentText = Color3.fromRGB(255, 255, 255),
    Success = Color3.fromRGB(255, 60, 0),
    Danger = Color3.fromRGB(200, 30, 0),
    Hover = Color3.fromRGB(70, 20, 10),
    Selected = Color3.fromRGB(90, 25, 10),
    TrackEmpty = Color3.fromRGB(50, 30, 20),
    Glass = Color3.fromRGB(10, 5, 5),
    GlassStroke = Color3.fromRGB(255, 60, 0),
    GlassAlpha = 0.94,
    GlassHoverAlpha = 0.9,
},
BloodMoon = {
    Name = 'Blood Moon',
    Background = Color3.fromRGB(8, 5, 12),
    Sidebar = Color3.fromRGB(15, 8, 20),
    Panel = Color3.fromRGB(20, 10, 25),
    PanelAlt = Color3.fromRGB(35, 15, 35),
    Elevated = Color3.fromRGB(50, 20, 45),
    Stroke = Color3.fromRGB(180, 0, 60),
    Text = Color3.fromRGB(255, 255, 255),
    SubText = Color3.fromRGB(170, 160, 170),
    Dim = Color3.fromRGB(100, 90, 100),
    Accent = Color3.fromRGB(220, 0, 70),
    AccentText = Color3.fromRGB(255, 255, 255),
    Success = Color3.fromRGB(220, 0, 70),
    Danger = Color3.fromRGB(150, 0, 40),
    Hover = Color3.fromRGB(60, 10, 35),
    Selected = Color3.fromRGB(80, 10, 45),
    TrackEmpty = Color3.fromRGB(45, 25, 45),
    Glass = Color3.fromRGB(8, 5, 12),
    GlassStroke = Color3.fromRGB(220, 0, 70),
    GlassAlpha = 0.94,
    GlassHoverAlpha = 0.9,
},
ShadowRed = {
    Name = 'Shadow Red',
    Background = Color3.fromRGB(5, 5, 5),
    Sidebar = Color3.fromRGB(12, 12, 12),
    Panel = Color3.fromRGB(18, 18, 18),
    PanelAlt = Color3.fromRGB(30, 10, 10),
    Elevated = Color3.fromRGB(45, 15, 15),
    Stroke = Color3.fromRGB(130, 0, 0),
    Text = Color3.fromRGB(255, 255, 255),
    SubText = Color3.fromRGB(150, 150, 150),
    Dim = Color3.fromRGB(80, 80, 80),
    Accent = Color3.fromRGB(200, 0, 0),
    AccentText = Color3.fromRGB(255, 255, 255),
    Success = Color3.fromRGB(200, 0, 0),
    Danger = Color3.fromRGB(130, 0, 0),
    Hover = Color3.fromRGB(45, 8, 8),
    Selected = Color3.fromRGB(65, 10, 10),
    TrackEmpty = Color3.fromRGB(35, 35, 35),
    Glass = Color3.fromRGB(5, 5, 5),
    GlassStroke = Color3.fromRGB(200, 0, 0),
    GlassAlpha = 0.94,
    GlassHoverAlpha = 0.9,
},
}
Ui.IconStyle = 'bold'
Ui.IconPackUrl = 'https://raw.githubusercontent.com/StyearX/Icons/main/solar/dist/Icons.lua'
Ui.IconPack = nil
Ui.Icons = {
    code = 'code-square',
    globe = 'global',
    home = 'home-2',
    box = 'widget',
    gear = 'settings',
    search = 'magnifer',
    terminal = 'command',
    link = 'link-minimalistic-2',
    keyboard = 'keyboard',
    window = 'window-frame',
    palette = 'palette',
    play = 'play',
    pause = 'pause',
    prev = 'skip-previous',
    next = 'skip-next',
    star = 'star',
    close = 'close-circle',
    plus = 'add-circle',
    chevron = 'alt-arrow-right',
    chevronDown = 'alt-arrow-down',
    chevronLeft = 'alt-arrow-left',
    volume = 'volume-loud',
    note = 'music-note-2',
    spark = 'magic-stick-3',
    speed = 'playback-speed',
    file = 'file',
    copy = 'copy',
    save = 'diskette',
    clear = 'trash-bin-minimalistic',
    inject = 'bolt',
    folder = 'folder',
    up = 'alt-arrow-up',
    down = 'alt-arrow-down',
    minimize = 'minimize-square',
    maximize = 'maximize-square',
    logo = 'layers-minimalistic',
    run = 'play-circle',
    bug = 'bug',
    tab = 'documents-minimalistic',
    cursor = 'cursor',
    heart = 'heart',
    settings = 'settings-minimalistic',
    document = 'document-text',
    layers = 'layers',
    magic = 'magic-stick',
    widget = 'widget-3',
    download = 'download-minimalistic',
    upload = 'upload-minimalistic',
    trash = 'trash-bin-trash',
    refresh = 'restart',
}
Ui.IconFallback = {
    ['add-circle'] = 'rbxassetid://139478909806812',
    ['alt-arrow-down'] = 'rbxassetid://98764963621439',
    ['alt-arrow-left'] = 'rbxassetid://102531941843733',
    ['alt-arrow-right'] = 'rbxassetid://113692007244654',
    ['alt-arrow-up'] = 'rbxassetid://89282378235317',
    ['bolt'] = 'rbxassetid://130006650864115',
    ['bug'] = 'rbxassetid://72884019555988',
    ['close-circle'] = 'rbxassetid://103154043386406',
    ['code-square'] = 'rbxassetid://111042135639244',
    ['command'] = 'rbxassetid://93159922068420',
    ['copy'] = 'rbxassetid://107485544510830',
    ['cursor'] = 'rbxassetid://82682091622365',
    ['diskette'] = 'rbxassetid://100311085528798',
    ['document-text'] = 'rbxassetid://128687888230039',
    ['documents-minimalistic'] = 'rbxassetid://81144114750181',
    ['download-minimalistic'] = 'rbxassetid://89402481288235',
    ['file'] = 'rbxassetid://127490106584938',
    ['folder'] = 'rbxassetid://101207683756324',
    ['global'] = 'rbxassetid://139419629866911',
    ['heart'] = 'rbxassetid://119572392737590',
    ['home-2'] = 'rbxassetid://117906088481880',
    ['keyboard'] = 'rbxassetid://140087399831489',
    ['layers'] = 'rbxassetid://76370553090551',
    ['layers-minimalistic'] = 'rbxassetid://112408985270064',
    ['link-minimalistic-2'] = 'rbxassetid://73371793592887',
    ['magic-stick'] = 'rbxassetid://83508311570631',
    ['magic-stick-3'] = 'rbxassetid://134561599449883',
    ['magnifer'] = 'rbxassetid://75236956926329',
    ['maximize-square'] = 'rbxassetid://92640655416045',
    ['minimize-square'] = 'rbxassetid://76780451864744',
    ['music-note-2'] = 'rbxassetid://97445775514198',
    ['palette'] = 'rbxassetid://71228091130971',
    ['pause'] = 'rbxassetid://108033303358492',
    ['play'] = 'rbxassetid://135609604299893',
    ['play-circle'] = 'rbxassetid://120408917249739',
    ['playback-speed'] = 'rbxassetid://75658442425524',
    ['restart'] = 'rbxassetid://95329801274970',
    ['settings'] = 'rbxassetid://140704441124047',
    ['settings-minimalistic'] = 'rbxassetid://72727338348045',
    ['skip-next'] = 'rbxassetid://127467521419903',
    ['skip-previous'] = 'rbxassetid://92672240459844',
    ['star'] = 'rbxassetid://98157183283283',
    ['trash-bin-minimalistic'] = 'rbxassetid://70865927459256',
    ['trash-bin-trash'] = 'rbxassetid://76323366897784',
    ['upload-minimalistic'] = 'rbxassetid://107646669869079',
    ['volume-loud'] = 'rbxassetid://133324163109944',
    ['widget'] = 'rbxassetid://124133264580702',
    ['widget-3'] = 'rbxassetid://82229378234667',
    ['window-frame'] = 'rbxassetid://87953247223226',
}

Ui.AllowRemoteIcons = false

local function loadIconPack()
    if Ui.IconPack then
        return Ui.IconPack
    end
    if not Ui.AllowRemoteIcons then
        Ui.IconPack = {}

        return Ui.IconPack
    end

    local ok, res = pcall(function()
        local url = tostring(Ui.IconPackUrl or '')

        if not url:match('^https://') then
            return nil
        end

        local body = game:HttpGet(url)

        if type(body) ~= 'string' or #body == 0 then
            return nil
        end

        local chunk = loadstring(body)

        if type(chunk) ~= 'function' then
            return nil
        end

        return chunk()
    end)

    Ui.IconPack = (ok and type(res) == 'table') and res or {}

    return Ui.IconPack
end

task.spawn(function()
    if Ui.AllowRemoteIcons then
        loadIconPack()
    end
end)

function Ui.GetIcon(name, style)
    if name == nil or name == '' then
        return ''
    end
    if type(name) == 'number' then
        return 'rbxassetid://' .. name
    end

    name = tostring(name)

    if name:match('^rbxassetid://') or name:match('^rbxasset://') or name:match('^http') then
        return name
    end
    if name:match('^%d+$') then
        return 'rbxassetid://' .. name
    end

    local base = Ui.Icons[name] or name
    local pack = loadIconPack()

    if type(pack) ~= 'table' then
        pack = {}
    end

    style = style or Ui.IconStyle

    return pack[base .. '-' .. style] or pack[base .. '-bold'] or pack[base .. '-linear'] or pack[base] or Ui.IconFallback[base] or Ui.IconFallback[Ui.Icons[name] or ''] or ''
end

Ui.Icon = Ui.GetIcon

function Ui:SetIconStyle(style)
    Ui.IconStyle = style or 'bold'
end

local ACTIVE = Ui.Themes.Dark
local REGISTRY = {}

local function track(inst, prop, token)
    if typeof(inst) ~= 'Instance' or ACTIVE[token] == nil then
        return
    end

    table.insert(REGISTRY, {
        inst = inst,
        prop = prop,
        token = token,
    })

    inst[prop] = ACTIVE[token]

    inst.Destroying:Connect(function()
        for i = #REGISTRY, 1, -1 do
            if REGISTRY[i].inst == inst then
                table.remove(REGISTRY, i)
            end
        end
    end)
end
local function new(class, props, children)
    local o = Instance.new(class)

    for k, v in pairs(props or {})do
        if k ~= 'Parent' and k ~= 'Theme' then
            o[k] = v
        end
    end
    for prop, token in pairs((props or {}).Theme or {})do
        track(o, prop, token)
    end
    for _, c in ipairs(children or {})do
        c.Parent = o
    end

    if props and props.Parent then
        o.Parent = props.Parent
    end

    return o
end
Ui.CornerScale = 1
local function corner(parent, r)
    local base = r or 10
    local soft = math.clamp(math.floor(base * (Ui.CornerScale or 1) + 0.5), 4, 32)

    return new('UICorner', {
        CornerRadius = UDim.new(0, soft),
        Parent = parent,
    })
end
local function stroke(parent, token, thickness)
    local s = new('UIStroke', {
        Thickness = thickness or 1,
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        Parent = parent,
        Theme = {
            Color = token or 'Stroke',
        },
    })

    return s
end
local function glass(inst, opt)
    opt = opt or {}

    inst.BackgroundTransparency = 1
    inst.BorderSizePixel = 0

    track(inst, 'BackgroundColor3', 'Glass')
    track(inst, 'BackgroundTransparency', opt.Token or 'GlassAlpha')

    local g = new('UIGradient', {
        Rotation = opt.Rotation or 115,
        Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0.12),
            NumberSequenceKeypoint.new(0.55, 0.34),
            NumberSequenceKeypoint.new(1, 0.55),
        }),
        Parent = inst,
    })
    local s = new('UIStroke', {
        Thickness = opt.Thickness or 1.2,
        Transparency = 0.35,
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        Parent = inst,
        Theme = {
            Color = 'GlassStroke',
        },
    })

    new('UIGradient', {
        Rotation = 90,
        Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0.1),
            NumberSequenceKeypoint.new(1, 0.8),
        }),
        Parent = s,
    })

    inst:SetAttribute('BaseTransparency', ACTIVE[opt.Token or 'GlassAlpha'])

    return g, s
end
local function glassHover(inst)
    local idle = ACTIVE.GlassAlpha
    local hot = ACTIVE.GlassHoverAlpha

    inst.MouseEnter:Connect(function()
        tween(inst, 0.14, {
            BackgroundTransparency = ACTIVE.GlassHoverAlpha or hot,
        })
    end)
    inst.MouseLeave:Connect(function()
        tween(inst, 0.18, {
            BackgroundTransparency = ACTIVE.GlassAlpha or idle,
        })
    end)
end
local function pad(parent, l, r, t, b)
    return new('UIPadding', {
        PaddingLeft = UDim.new(0, l or 0),
        PaddingRight = UDim.new(0, r or l or 0),
        PaddingTop = UDim.new(0, t or 0),
        PaddingBottom = UDim.new(0, b or t or 0),
        Parent = parent,
    })
end
local function list(parent, dir, padPx, align)
    return new('UIListLayout', {
        FillDirection = dir or Enum.FillDirection.Vertical,
        Padding = UDim.new(0, padPx or 0),
        SortOrder = Enum.SortOrder.LayoutOrder,
        VerticalAlignment = Enum.VerticalAlignment.Center,
        HorizontalAlignment = align or Enum.HorizontalAlignment.Left,
        Parent = parent,
    })
end

local ANIM = {
    enabled = true,
    speed = 1,
}

local function tween(inst, time, goal, style)
    if not ANIM.enabled then
        for k, v in pairs(goal)do
            inst[k] = v
        end

        return
    end

    local t = TweenService:Create(inst, TweenInfo.new(time * ANIM.speed, style or Enum.EasingStyle.Quint, Enum.EasingDirection.Out), goal)

    t:Play()

    return t
end
local function hoverable(button, base, hover)
    button.MouseEnter:Connect(function()
        tween(button, 0.12, {
            BackgroundColor3 = ACTIVE[hover],
        })
    end)
    button.MouseLeave:Connect(function()
        tween(button, 0.12, {
            BackgroundColor3 = ACTIVE[base],
        })
    end)
end
local function ripple(button)
    button.MouseButton1Down:Connect(function()
        local base = button:GetAttribute('BaseTransparency')

        if base == nil then
            base = button.BackgroundTransparency

            button:SetAttribute('BaseTransparency', base)
        end
        if base >= 1 then
            if button:IsA('ImageButton') then
                tween(button, 0.08, {ImageTransparency = 0.35})

                task.delay(0.1, function()
                    if button and button.Parent then
                        tween(button, 0.12, {ImageTransparency = 0})
                    end
                end)
            end

            return
        end

        tween(button, 0.08, {
            BackgroundTransparency = math.clamp(base + 0.2, 0, 1),
        })
        task.delay(0.1, function()
            if button and button.Parent then
                tween(button, 0.12, {BackgroundTransparency = base})
            end
        end)
    end)
end
local function iconNode(class, props)
    props = props or {}

    local name = props.Icon

    props.Icon = nil
    props.Image = Ui.GetIcon(name)

    if props.BackgroundTransparency == nil then
        props.BackgroundTransparency = 1
    end

    props.ScaleType = props.ScaleType or Enum.ScaleType.Fit
    props.BorderSizePixel = 0

    if class == 'ImageButton' then
        props.AutoButtonColor = false
    end

    local o = new(class, props)

    o:SetAttribute('IconName', tostring(name or ''))

    return o
end
local function iconLabel(props)
    return iconNode('ImageLabel', props)
end
local function iconButton(props)
    return iconNode('ImageButton', props)
end
local function setIcon(obj, name)
    if not obj then
        return
    end
    if obj:IsA('ImageLabel') or obj:IsA('ImageButton') then
        obj.Image = Ui.GetIcon(name)

        obj:SetAttribute('IconName', tostring(name or ''))
    end
end

function Ui:SetIcon(obj, name)
    setIcon(obj, name)
end
function Ui:SetTheme(name)
    local theme = Ui.Themes[name] or Ui.Themes.Dark

    ACTIVE = theme

    for i = #REGISTRY, 1, -1 do
        local r = REGISTRY[i]
        local alive = typeof(r.inst) == 'Instance' and pcall(function()
            return r.inst.Name
        end)

        if not alive then
            table.remove(REGISTRY, i)
        elseif theme[r.token] ~= nil then
            pcall(function()
                tween(r.inst, 0.2, {
                    [r.prop] = theme[r.token],
                })
            end)
        end
    end

    Ui.CurrentTheme = theme

    return theme
end

Ui.CurrentTheme = ACTIVE

-- Color customization -------------------------------------------------------
-- Ui:CreateTheme('Neon', {Accent = Color3.fromRGB(0,255,180)}, 'Dark')
function Ui:CreateTheme(name, tokens, base)
    local src = Ui.Themes[base or 'Dark'] or Ui.Themes.Dark
    local t = {}

    for k, v in pairs(src)do
        t[k] = v
    end
    for k, v in pairs(tokens or {})do
        t[k] = v
    end

    t.Name = name
    Ui.Themes[name] = t

    return t
end

-- Live-patch tokens of the theme that is currently applied.
function Ui:SetColors(tokens)
    local current = Ui.CurrentTheme or ACTIVE

    for k, v in pairs(tokens or {})do
        current[k] = v
    end

    return Ui:SetTheme(current.Name or 'Dark')
end

function Ui:SetAccent(color, textColor)
    return Ui:SetColors({
        Accent = color,
        Success = color,
        AccentText = textColor or Ui.CurrentTheme.AccentText,
    })
end

function Ui:SetAnimations(on)
    ANIM.enabled = on and true or false
end
function Ui:SetAnimationSpeed(mult)
    ANIM.speed = math.clamp(1 / math.max(mult, 0.1), 0.1, 5)
end

local function makeScreenGui()
    local gui = Instance.new('ScreenGui')

    gui.Name = 'ZeoxUI_' .. tostring(math.random(1e5, 1e6))
    gui.ResetOnSpawn = false
    gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    gui.IgnoreGuiInset = true
    gui.DisplayOrder = 9999

    local ok = pcall(function()
        if gethui then
            gui.Parent = gethui()
        elseif syn and syn.protect_gui then
            syn.protect_gui(gui)

            gui.Parent = CoreGui
        else
            gui.Parent = CoreGui
        end
    end)

    if not ok then
        gui.Parent = LocalPlayer:WaitForChild('PlayerGui')
    end

    return gui
end
local function makeDraggable(frame, handle)
    local dragging, startPos, startInput
    local endConn

    handle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging, startInput, startPos = true, input.Position, frame.Position

            if endConn then
                endConn:Disconnect()
            end

            endConn = input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false

                    if endConn then
                        endConn:Disconnect()

                        endConn = nil
                    end
                end
            end)
        end
    end)

    local moveConn

    moveConn = UserInputService.InputChanged:Connect(function(input)
        if not dragging then
            return
        end
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            local d = input.Position - startInput

            frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + d.X, startPos.Y.Scale, startPos.Y.Offset + d.Y)
        end
    end)

    frame.Destroying:Connect(function()
        dragging = false

        if moveConn then
            moveConn:Disconnect()
        end
        if endConn then
            endConn:Disconnect()
        end
    end)
end

local Visualizer = {}

Visualizer.__index = Visualizer

function Visualizer.new(parent, barCount)
    local self = setmetatable({}, Visualizer)

    barCount = barCount or 4

    self.bars = {}
    self.active = true
    self.frame = new('Frame', {
        Name = 'Visualizer',
        BackgroundTransparency = 1,
        Size = UDim2.new(0, barCount * 5, 1, 0),
        Parent = parent,
    })

    local l = list(self.frame, Enum.FillDirection.Horizontal, 2, Enum.HorizontalAlignment.Center)

    l.VerticalAlignment = Enum.VerticalAlignment.Bottom

    -- Ascending step heights, like a phone's signal-strength icon.
    for i = 1, barCount do
        local maxH = 5 + (i - 1) * 4
        local bar = new('Frame', {
            Size = UDim2.new(0, 3, 0, maxH),
            BorderSizePixel = 0,
            LayoutOrder = i,
            Parent = self.frame,
            BackgroundColor3 = Color3.fromRGB(90, 90, 90),
        })

        corner(bar, 1)

        self.bars[i] = {inst = bar, maxH = maxH}
    end

    local IDLE_COLOR = Color3.fromRGB(90, 90, 90)
    local RED = Color3.fromRGB(240, 70, 70)
    local YELLOW = Color3.fromRGB(240, 190, 60)
    local GREEN = Color3.fromRGB(70, 210, 110)
    local statsService = game:GetService('Stats')
    local lastCheck, ping = 0, 0

    -- Ping tiers: each maps a max ping to how many bars light up and
    -- what color, so the bar count and color always agree with each other.
    local TIERS = {
        {maxPing = 60, ratio = 1, color = GREEN},
        {maxPing = 120, ratio = 0.75, color = GREEN},
        {maxPing = 200, ratio = 0.5, color = YELLOW},
        {maxPing = math.huge, ratio = 0.25, color = RED},
    }

    self.conn = RunService.RenderStepped:Connect(function()
        if not self.active then
            return
        end

        local now = os.clock()

        if now - lastCheck > 1 then
            lastCheck = now

            local ok, p = pcall(function()
                return statsService.Network.ServerStatsItem['Data Ping']:GetValue()
            end)

            ping = (ok and type(p) == 'number') and p or ping
        end

        local lit, color = 0, IDLE_COLOR

        if ping > 0 then
            for _, tier in ipairs(TIERS)do
                if ping <= tier.maxPing then
                    lit = math.max(1, math.ceil(tier.ratio * #self.bars))
                    color = tier.color

                    break
                end
            end
        end

        for i, bar in ipairs(self.bars)do
            local on = i <= lit
            local targetColor = on and color or IDLE_COLOR
            local targetTransparency = on and 0 or 0.55

            bar.inst.BackgroundColor3 = bar.inst.BackgroundColor3:Lerp(targetColor, 0.35)
            bar.inst.BackgroundTransparency = bar.inst.BackgroundTransparency + (targetTransparency - bar.inst.BackgroundTransparency) * 0.35
        end
    end)

    return self
end
function Visualizer:SetActive(state)
    self.active = state and true or false
end
function Visualizer:Destroy()
    if self.conn then
        self.conn:Disconnect()
    end

    self.frame:Destroy()
end

local CTRL_W, CTRL_H, CTRL_R, ROW_H = 160, 30, 15, 56

local Section = {}

Section.__index = Section

local function rowBase(section, height)
    local row = new('Frame', {
        Size = UDim2.new(1, 0, 0, height or 58),
        BackgroundTransparency = 1,
        LayoutOrder = section:_next(),
        Parent = section.body,
    })
    local line = new('Frame', {
        Size = UDim2.new(1, -20, 0, 1),
        Position = UDim2.new(0, 10, 0, 0),
        BorderSizePixel = 0,
        Parent = row,
        Theme = {
            BackgroundColor3 = 'Stroke',
        },
    })

    line.Visible = section._count > 1

    return row
end
local function rowLabel(row, icon, title, desc)
    local x = 14

    if icon then
        iconLabel({
            Icon = icon,
            Size = UDim2.new(0, 20, 0, 20),
            AnchorPoint = Vector2.new(0, 0.5),
            Position = UDim2.new(0, x, 0.5, 0),
            Parent = row,
            Theme = {
                ImageColor3 = 'SubText',
            },
        })

        x = x + 32
    end

    local hasDesc = desc and desc ~= ''

    new('TextLabel', {
        Text = title,
        Font = Enum.Font.GothamBold,
        TextSize = 13,
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, x, 0, hasDesc and 12 or 0),
        Size = UDim2.new(1, -x - 130, 0, hasDesc and 18 or 0),
        Parent = row,
        Theme = {
            TextColor3 = 'Text',
        },
    }).Size = hasDesc and UDim2.new(1, -x - 130, 0, 18) or UDim2.new(1, -x - 130, 1, 0)

    if hasDesc then
        new('TextLabel', {
            Text = desc,
            Font = Enum.Font.Gotham,
            TextSize = 12,
            TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, x, 0, 31),
            Size = UDim2.new(1, -x - 130, 0, 16),
            Parent = row,
            Theme = {
                TextColor3 = 'SubText',
            },
        })
    end

    row:SetAttribute('SearchText', string.lower(tostring(title or '') .. ' ' .. tostring(desc or '')))

    return x
end

function Section:_next()
    self._count = (self._count or 0) + 1

    return self._count
end
function Section:CreateButton(opt)
    opt = opt or {}

    local row = rowBase(self, ROW_H)

    rowLabel(row, opt.Icon, opt.Name or 'Button', opt.Description)

    local btn = new('TextButton', {
        Text = opt.ButtonText or 'Run',
        Font = Enum.Font.GothamBold,
        TextSize = 12,
        AutoButtonColor = false,
        BorderSizePixel = 0,
        Size = UDim2.new(0, CTRL_W, 0, CTRL_H),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -14, 0.5, 0),
        Parent = row,
        Theme = {
            BackgroundColor3 = 'Accent',
            TextColor3 = 'AccentText',
        },
    })

    corner(btn, CTRL_R)
    ripple(btn)
    btn.MouseButton1Click:Connect(function()
        if opt.Callback then
            task.spawn(opt.Callback)
        end
    end)

    return {
        Instance = row,
        Button = btn,
    }
end
function Section:CreateToggle(opt)
    opt = opt or {}

    local state = opt.Default and true or false
    local row = rowBase(self, ROW_H)

    rowLabel(row, opt.Icon, opt.Name or 'Toggle', opt.Description)

    local track_ = new('TextButton', {
        Text = '',
        AutoButtonColor = false,
        BorderSizePixel = 0,
        Size = UDim2.new(0, 46, 0, 26),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -14, 0.5, 0),
        Parent = row,
        Theme = {
            BackgroundColor3 = state and 'Accent' or 'TrackEmpty',
        },
    })

    corner(track_, 13)

    local knob = new('Frame', {
        Size = UDim2.new(0, 20, 0, 20),
        BorderSizePixel = 0,
        AnchorPoint = Vector2.new(0, 0.5),
        Position = state and UDim2.new(1, -23, 0.5, 0) or UDim2.new(0, 3, 0.5, 0),
        Parent = track_,
        Theme = {
            BackgroundColor3 = state and 'AccentText' or 'Background',
        },
    })

    corner(knob, 10)

    local api = {}

    function api:Set(v, silent)
        state = v and true or false

        tween(track_, 0.18, {
            BackgroundColor3 = state and ACTIVE.Accent or ACTIVE.TrackEmpty,
        })
        tween(knob, 0.18, {
            Position = state and UDim2.new(1, -23, 0.5, 0) or UDim2.new(0, 3, 0.5, 0),
            BackgroundColor3 = state and ACTIVE.AccentText or ACTIVE.Background,
        })

        if not silent and opt.Callback then
            task.spawn(opt.Callback, state)
        end
    end
    function api:Get()
        return state
    end

    track_.MouseButton1Click:Connect(function()
        api:Set(not state)
    end)

    api.Instance = row

    return api
end
function Section:CreateSlider(opt)
    opt = opt or {}

    local min, max = opt.Min or 0, opt.Max or 100
    local value = math.clamp(opt.Default or min, min, max)
    local suffix = opt.Suffix or ''
    local row = rowBase(self, ROW_H)

    rowLabel(row, opt.Icon, opt.Name or 'Slider', opt.Description)

    local valueLabel = new('TextLabel', {
        Text = tostring(value) .. suffix,
        Font = Enum.Font.Gotham,
        TextSize = 12,
        TextXAlignment = Enum.TextXAlignment.Right,
        BackgroundTransparency = 1,
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -14, 0.5, 0),
        Size = UDim2.new(0, 42, 0, 16),
        Parent = row,
        Theme = {
            TextColor3 = 'SubText',
        },
    })
    local bar = new('TextButton', {
        Text = '',
        AutoButtonColor = false,
        BorderSizePixel = 0,
        Size = UDim2.new(0, CTRL_W - 64, 0, 4),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -64, 0.5, 0),
        Parent = row,
        Theme = {
            BackgroundColor3 = 'TrackEmpty',
        },
    })

    corner(bar, 2)

    local fill = new('Frame', {
        Size = UDim2.new((value - min) / (max - min), 0, 1, 0),
        BorderSizePixel = 0,
        Parent = bar,
        Theme = {
            BackgroundColor3 = 'Accent',
        },
    })

    corner(fill, 2)

    local knob = new('Frame', {
        Size = UDim2.new(0, 14, 0, 14),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.new((value - min) / (max - min), 0, 0.5, 0),
        BorderSizePixel = 0,
        Parent = bar,
        Theme = {
            BackgroundColor3 = 'Background',
        },
    })

    corner(knob, 7)
    stroke(knob, 'Stroke', 1.5)

    local api = {}

    local function apply(alpha, silent)
        alpha = math.clamp(alpha, 0, 1)
        value = min + (max - min) * alpha

        if not opt.Decimals or opt.Decimals == 0 then
            value = math.floor(value + 0.5)
        else
            value = math.floor(value * 10 ^ opt.Decimals + 0.5) / 10 ^ opt.Decimals
        end

        local a = (value - min) / (max - min)

        fill.Size = UDim2.new(a, 0, 1, 0)
        knob.Position = UDim2.new(a, 0, 0.5, 0)
        valueLabel.Text = tostring(value) .. suffix

        if not silent and opt.Callback then
            task.spawn(opt.Callback, value)
        end
    end

    function api:Set(v, silent)
        apply(((v - min) / (max - min)), silent)
    end
    function api:Get()
        return value
    end

    local dragging = false

    local function fromInput(input)
        apply((input.Position.X - bar.AbsolutePosition.X) / bar.AbsoluteSize.X)
    end

    bar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true

            fromInput(input)
            tween(knob, 0.1, {
                Size = UDim2.new(0, 17, 0, 17),
            })
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            if dragging then
                tween(knob, 0.1, {
                    Size = UDim2.new(0, 14, 0, 14),
                })
            end

            dragging = false
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            fromInput(input)
        end
    end)

    api.Instance = row

    return api
end
function Section:CreateInput(opt)
    opt = opt or {}

    local row = rowBase(self, ROW_H)

    rowLabel(row, opt.Icon, opt.Name or 'Input', opt.Description)

    local box = new('Frame', {
        Size = UDim2.new(0, CTRL_W, 0, CTRL_H),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -14, 0.5, 0),
        BorderSizePixel = 0,
        Parent = row,
        Theme = {
            BackgroundColor3 = 'Elevated',
        },
    })

    corner(box, CTRL_R)
    stroke(box)

    local tb = new('TextBox', {
        Text = opt.Default or '',
        PlaceholderText = opt.Placeholder or 'Type here...',
        Font = Enum.Font.Gotham,
        TextSize = 12,
        ClearTextOnFocus = false,
        BackgroundTransparency = 1,
        Size = UDim2.new(1, -24, 1, 0),
        Position = UDim2.new(0, 12, 0, 0),
        TextXAlignment = Enum.TextXAlignment.Left,
        Parent = box,
        Theme = {
            TextColor3 = 'Text',
            PlaceholderColor3 = 'Dim',
        },
    })

    tb.FocusLost:Connect(function(enter)
        if opt.Callback then
            task.spawn(opt.Callback, tb.Text, enter)
        end
    end)

    return {
        Instance = row,
        TextBox = tb,
        Set = function(_, v)
            tb.Text = v
        end,
        Get = function()
            return tb.Text
        end,
    }
end
function Section:CreateDropdown(opt)
    opt = opt or {}

    local options = opt.Options or {}
    local selected = opt.Default or options[1] or ''
    local open = false
    local row = rowBase(self, ROW_H)

    rowLabel(row, opt.Icon, opt.Name or 'Dropdown', opt.Description)

    local head = new('TextButton', {
        Text = '',
        AutoButtonColor = false,
        BorderSizePixel = 0,
        Size = UDim2.new(0, CTRL_W, 0, CTRL_H),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -14, 0.5, 0),
        Parent = row,
        Theme = {
            BackgroundColor3 = 'Elevated',
        },
    })

    corner(head, CTRL_R)
    stroke(head)

    local sel = new('TextLabel', {
        Text = tostring(selected),
        Font = Enum.Font.GothamMedium,
        TextSize = 12,
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 12, 0, 0),
        Size = UDim2.new(1, -34, 1, 0),
        Parent = head,
        Theme = {
            TextColor3 = 'Text',
        },
    })
    local arrow = iconLabel({
        Icon = Ui.Icons.chevronDown,
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -10, 0.5, 0),
        Size = UDim2.new(0, 14, 0, 14),
        Parent = head,
        Theme = {
            ImageColor3 = 'SubText',
        },
    })
    local overlay = self.window and self.window.overlay
    local menu = new('ScrollingFrame', {
        Size = UDim2.new(0, CTRL_W, 0, 0),
        ClipsDescendants = true,
        Visible = false,
        Active = true,
        AnchorPoint = overlay and Vector2.new(0, 0) or Vector2.new(1, 0),
        Position = overlay and UDim2.new(0, 0, 0, 0) or UDim2.new(1, -14, 0.5, 18),
        BorderSizePixel = 0,
        ZIndex = 150,
        CanvasSize = UDim2.new(),
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        ScrollBarThickness = 3,
        ScrollBarImageTransparency = 0.5,
        ScrollingDirection = Enum.ScrollingDirection.Y,
        Parent = overlay or row,
        Theme = {
            BackgroundColor3 = 'Elevated',
        },
    })

    -- Returns the height the menu should animate to. The menu is placed inside
    -- the window overlay and flipped above the control when there is not
    -- enough room below (last row / long option lists), and it is always
    -- clamped to the window so it can never overflow or hide behind content.
    local function place(wantedH)
        wantedH = wantedH or 0

        if not overlay then
            return wantedH
        end

        local root = self.window.root
        local rootAbs, rootSize = root.AbsolutePosition, root.AbsoluteSize
        local hp, hs = head.AbsolutePosition, head.AbsoluteSize
        local relX = hp.X - rootAbs.X
        local relY = hp.Y - rootAbs.Y
        local below = rootSize.Y - (relY + hs.Y) - 10
        local above = relY - 10
        local flip = false
        local h = wantedH

        if wantedH > below and above > below then
            flip = true
            h = math.min(wantedH, above)
        else
            h = math.min(wantedH, below)
        end

        h = math.max(math.floor(h), 34)
        relX = math.clamp(relX, 6, math.max(6, rootSize.X - CTRL_W - 6))
        menu.Position = UDim2.new(0, relX, 0, flip and (relY - h - 6) or (relY + hs.Y + 6))

        return h
    end

    corner(menu, 8)
    stroke(menu)

    local ml = list(menu, Enum.FillDirection.Vertical, 2)

    ml.VerticalAlignment = Enum.VerticalAlignment.Top

    pad(menu, 4, 4, 4, 4)

    local api = {}

    local function rebuild()
        for _, c in ipairs(menu:GetChildren())do
            if c:IsA('TextButton') then
                c:Destroy()
            end
        end
        for i, o in ipairs(options)do
            local item = new('TextButton', {
                Text = tostring(o),
                Font = Enum.Font.Gotham,
                TextSize = 12,
                TextXAlignment = Enum.TextXAlignment.Left,
                AutoButtonColor = false,
                BorderSizePixel = 0,
                BackgroundTransparency = 1,
                ZIndex = 151,
                Size = UDim2.new(1, 0, 0, 26),
                LayoutOrder = i,
                Parent = menu,
                Theme = {
                    TextColor3 = 'Text',
                    BackgroundColor3 = 'Hover',
                },
            })

            corner(item, 6)
            pad(item, 8, 8, 0, 0)

            item.BackgroundTransparency = 1

            item.MouseEnter:Connect(function()
                item.BackgroundTransparency = 0
            end)
            item.MouseLeave:Connect(function()
                item.BackgroundTransparency = 1
            end)
            item.MouseButton1Click:Connect(function()
                selected = o
                sel.Text = tostring(o)

                api:Close()

                if opt.Callback then
                    task.spawn(opt.Callback, o)
                end
            end)
        end
    end

    function api:Open()
        if Ui._openDropdown and Ui._openDropdown ~= api then
            pcall(function()
                Ui._openDropdown:Close()
            end)
        end
        if Ui._openPopup then
            pcall(function()
                Ui._openPopup:Close()
            end)
        end

        Ui._openDropdown = api
        open = true
        menu.Visible = true

        menu.Size = UDim2.new(0, CTRL_W, 0, 0)
        menu.CanvasPosition = Vector2.new(0, 0)

        local h = place(#options * 28 + 8)

        tween(menu, 0.18, {
            Size = UDim2.new(0, CTRL_W, 0, h),
        })
        tween(arrow, 0.18, {Rotation = 180})
    end
    function api:Close()
        open = false

        if Ui._openDropdown == api then
            Ui._openDropdown = nil
        end

        tween(menu, 0.15, {
            Size = UDim2.new(0, CTRL_W, 0, 0),
        })
        tween(arrow, 0.15, {Rotation = 0})
        task.delay(0.16, function()
            if not open then
                menu.Visible = false
            end
        end)
    end
    function api:SetOptions(t)
        options = t

        rebuild()
    end
    function api:Get()
        return selected
    end
    function api:Set(v)
        selected = v
        sel.Text = tostring(v)
    end

    head.MouseButton1Click:Connect(function()
        if open then
            api:Close()
        else
            api:Open()
        end
    end)
    local outsideConn

    row.AncestryChanged:Connect(function()
        if not row:IsDescendantOf(game) then
            if outsideConn then
                outsideConn:Disconnect()

                outsideConn = nil
            end

            menu:Destroy()
        end
    end)

    outsideConn = UserInputService.InputBegan:Connect(function(input)
        if not open then
            return
        end
        if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then
            return
        end

        local p = input.Position
        local function inside(o)
            local a, b = o.AbsolutePosition, o.AbsoluteSize

            return p.X >= a.X and p.X <= a.X + b.X and p.Y >= a.Y and p.Y <= a.Y + b.Y
        end

        if not inside(head) and not inside(menu) then
            api:Close()
        end
    end)
    rebuild()

    api.Instance = row

    return api
end
function Section:CreateKeybind(opt)
    opt = opt or {}

    local key = opt.Default or Enum.KeyCode.RightShift
    local listening = false
    local row = rowBase(self, ROW_H)

    rowLabel(row, opt.Icon or Ui.Icons.keyboard, opt.Name or 'Keybind', opt.Description)

    local btn = new('TextButton', {
        Text = key.Name,
        Font = Enum.Font.GothamBold,
        TextSize = 12,
        AutoButtonColor = false,
        BorderSizePixel = 0,
        Size = UDim2.new(0, CTRL_W, 0, CTRL_H),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -14, 0.5, 0),
        Parent = row,
        Theme = {
            BackgroundColor3 = 'Elevated',
            TextColor3 = 'Text',
        },
    })

    corner(btn, CTRL_R)
    stroke(btn)
    btn.MouseButton1Click:Connect(function()
        listening = true
        btn.Text = '...'
    end)
    UserInputService.InputBegan:Connect(function(input, gpe)
        if listening and input.UserInputType == Enum.UserInputType.Keyboard then
            listening = false
            key = input.KeyCode
            btn.Text = key.Name

            if opt.Changed then
                task.spawn(opt.Changed, key)
            end
        elseif not gpe and input.KeyCode == key and opt.Callback then
            task.spawn(opt.Callback, key)
        end
    end)

    return {
        Instance = row,
        Get = function()
            return key
        end,
    }
end
function Section:CreateLabel(text)
    local row = rowBase(self, 34)

    new('TextLabel', {
        Text = text,
        Font = Enum.Font.Gotham,
        TextSize = 12,
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 14, 0, 0),
        Size = UDim2.new(1, -28, 1, 0),
        Parent = row,
        Theme = {
            TextColor3 = 'SubText',
        },
    })

    return {Instance = row}
end
function Section:CreateCard(opt)
    opt = opt or {}

    local card = new('TextButton', {
        Text = '',
        AutoButtonColor = false,
        BorderSizePixel = 0,
        Size = UDim2.new(1, 0, 0, 46),
        LayoutOrder = self:_next(),
        Parent = self.body,
    })

    corner(card, 12)
    glass(card)
    glassHover(card)
    ripple(card)
    iconLabel({
        Icon = opt.Icon or Ui.Icons.box,
        Size = UDim2.new(0, 20, 0, 20),
        AnchorPoint = Vector2.new(0, 0.5),
        Position = UDim2.new(0, 16, 0.5, 0),
        Parent = card,
        Theme = {
            ImageColor3 = 'SubText',
        },
    })
    new('TextLabel', {
        Text = opt.Name or 'Action',
        Font = Enum.Font.GothamBold,
        TextSize = 13,
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 48, 0, 0),
        Size = UDim2.new(1, -60, 1, 0),
        Parent = card,
        Theme = {
            TextColor3 = 'Text',
        },
    })
    card:SetAttribute('SearchText', string.lower(tostring(opt.Name or '')))
    card.MouseButton1Click:Connect(function()
        if opt.Callback then
            task.spawn(opt.Callback)
        end
    end)

    return {Instance = card}
end
function Section:CreateCardsGlass(opt)
    opt = opt or {}

    local cols = math.max(1, opt.Columns or 2)
    local gap = opt.Gap or 8
    local height = opt.CardHeight or 74
    local holder = new('Frame', {
        Name = 'CardsGlass',
        Size = UDim2.new(1, 0, 0, 0),
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundTransparency = 1,
        LayoutOrder = self:_next(),
        Parent = self.body,
    })

    pad(holder, 12, 12, 6, 6)

    local grid = new('UIGridLayout', {
        Parent = holder,
        SortOrder = Enum.SortOrder.LayoutOrder,
        CellPadding = UDim2.new(0, gap, 0, gap),
        CellSize = UDim2.new(1 / cols, -math.floor(gap * (cols - 1) / cols) - 1, 0, height),
    })
    local api = {
        Instance = holder,
        Cards = {},
    }

    function api:AddCard(c)
        c = c or {}

        local n = #api.Cards + 1
        local card = new('TextButton', {
            Text = '',
            AutoButtonColor = false,
            BorderSizePixel = 0,
            LayoutOrder = n,
            Parent = holder,
        })

        corner(card, 14)
        glass(card)
        glassHover(card)

        if ripple then
            pcall(ripple, card)
        end

        local iconBox = new('Frame', {
            AnchorPoint = Vector2.new(0, 0.5),
            Position = UDim2.new(0, 12, 0.5, 0),
            Size = UDim2.new(0, 36, 0, 36),
            BackgroundTransparency = 0.4,
            BorderSizePixel = 0,
            Parent = card,
            Theme = {
                BackgroundColor3 = 'Elevated',
            },
        })

        corner(iconBox, 10)
        stroke(iconBox)
        iconLabel({
            Icon = c.Icon or Ui.Icons.box,
            AnchorPoint = Vector2.new(0.5, 0.5),
            Position = UDim2.new(0.5, 0, 0.5, 0),
            Size = UDim2.new(0, 18, 0, 18),
            Parent = iconBox,
            Theme = {
                ImageColor3 = 'Text',
            },
        })

        local title = new('TextLabel', {
            Text = c.Name or ('Card ' .. n),
            Font = Enum.Font.GothamBold,
            TextSize = 13,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextTruncate = Enum.TextTruncate.AtEnd,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 58, 0, 14),
            Size = UDim2.new(1, -70, 0, 16),
            Parent = card,
            Theme = {
                TextColor3 = 'Text',
            },
        })
        local desc = new('TextLabel', {
            Text = c.Description or '',
            Font = Enum.Font.Gotham,
            TextSize = 11,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextTruncate = Enum.TextTruncate.AtEnd,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 58, 0, 32),
            Size = UDim2.new(1, -70, 0, 28),
            TextWrapped = true,
            TextYAlignment = Enum.TextYAlignment.Top,
            Parent = card,
            Theme = {
                TextColor3 = 'SubText',
            },
        })
        local entry = {
            Instance = card,
            Index = n,
        }

        function entry:SetName(t)
            title.Text = t
        end

        function entry:SetDescription(t)
            desc.Text = t or ''
        end

        function entry:Destroy()
            card:Destroy()
        end

        card:SetAttribute('SearchText', string.lower(tostring(c.Name or '') .. ' ' .. tostring(c.Description or '')))
        card.MouseButton1Click:Connect(function()
            if c.Callback then
                task.spawn(c.Callback, entry)
            end
        end)

        api.Cards[n] = entry

        return entry
    end

    for _, c in ipairs(opt.Cards or {})do
        api:AddCard(c)
    end

    return api
end
Section.CreateCards = Section.CreateCardsGlass

function Section:CreateEditor(opt)
    opt = opt or {}

    local holder = new('Frame', {
        Size = UDim2.new(1, 0, 0, opt.Height or 240),
        BorderSizePixel = 0,
        LayoutOrder = self:_next(),
        Parent = self.body,
    })

    corner(holder, 12)
    glass(holder)

    local box = new('TextBox', {
        Text = opt.Default or '',
        MultiLine = true,
        ClearTextOnFocus = false,
        Font = Enum.Font.Code,
        TextSize = 13,
        TextWrapped = false,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Top,
        BackgroundTransparency = 1,
        Size = UDim2.new(1, -24, 1, -20),
        Position = UDim2.new(0, 12, 0, 10),
        PlaceholderText = opt.Placeholder or '-- write your script here',
        Parent = holder,
        Theme = {
            TextColor3 = 'Text',
            PlaceholderColor3 = 'Dim',
        },
    })

    return {
        Instance = holder,
        TextBox = box,
        Get = function()
            return box.Text
        end,
        Set = function(_, v)
            box.Text = v
        end,
    }
end
function Section:CreateCheckbox(opt)
    opt = opt or {}

    local state = opt.Default and true or false
    local row = rowBase(self, ROW_H)

    rowLabel(row, opt.Icon, opt.Name or 'Checkbox', opt.Description)

    local box = new('TextButton', {
        Text = '',
        AutoButtonColor = false,
        BorderSizePixel = 0,
        Size = UDim2.new(0, 22, 0, 22),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -14, 0.5, 0),
        Parent = row,
        Theme = {
            BackgroundColor3 = state and 'Accent' or 'Elevated',
        },
    })

    corner(box, 6)

    local bs = stroke(box)

    bs.Transparency = state and 1 or 0

    local mark1 = new('Frame', {
        AnchorPoint = Vector2.new(0.5, 0.5),
        Size = UDim2.new(0, 2, 0, 7),
        Position = UDim2.new(0.34, 0, 0.56, 0),
        Rotation = 45,
        BorderSizePixel = 0,
        BackgroundTransparency = state and 0 or 1,
        Parent = box,
        Theme = {
            BackgroundColor3 = 'AccentText',
        },
    })

    corner(mark1, 1)

    local mark2 = new('Frame', {
        AnchorPoint = Vector2.new(0.5, 0.5),
        Size = UDim2.new(0, 2, 0, 12),
        Position = UDim2.new(0.6, 0, 0.4, 0),
        Rotation = -45,
        BorderSizePixel = 0,
        BackgroundTransparency = state and 0 or 1,
        Parent = box,
        Theme = {
            BackgroundColor3 = 'AccentText',
        },
    })

    corner(mark2, 1)

    local api = {}

    function api:Set(v, silent)
        state = v and true or false

        tween(box, 0.15, {
            BackgroundColor3 = state and ACTIVE.Accent or ACTIVE.Elevated,
        })
        tween(bs, 0.15, {
            Transparency = state and 1 or 0,
        })
        tween(mark1, 0.12, {BackgroundTransparency = state and 0 or 1})
        tween(mark2, 0.12, {BackgroundTransparency = state and 0 or 1})

        if not silent and opt.Callback then
            task.spawn(opt.Callback, state)
        end
    end
    function api:Get()
        return state
    end

    box.MouseButton1Click:Connect(function()
        api:Set(not state)
    end)

    api.Instance = row

    return api
end
function Section:CreateProgressBar(opt)
    opt = opt or {}

    local min, max = opt.Min or 0, opt.Max or 100
    local value = math.clamp(opt.Default or min, min, max)
    local suffix = opt.Suffix or '%'
    local row = rowBase(self, ROW_H)

    rowLabel(row, opt.Icon, opt.Name or 'Progress', opt.Description)

    local function pct(v)
        return math.floor(((v - min) / math.max(max - min, 1e-6)) * 100 + 0.5)
    end

    local valueLabel = new('TextLabel', {
        Text = tostring(pct(value)) .. suffix,
        Font = Enum.Font.Gotham,
        TextSize = 12,
        TextXAlignment = Enum.TextXAlignment.Right,
        BackgroundTransparency = 1,
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -14, 0.5, 0),
        Size = UDim2.new(0, 42, 0, 16),
        Parent = row,
        Theme = {
            TextColor3 = 'SubText',
        },
    })
    local bar = new('Frame', {
        BorderSizePixel = 0,
        Size = UDim2.new(0, CTRL_W - 64, 0, 4),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -64, 0.5, 0),
        Parent = row,
        Theme = {
            BackgroundColor3 = 'TrackEmpty',
        },
    })

    corner(bar, 2)

    local fill = new('Frame', {
        Size = UDim2.new(math.clamp((value - min) / math.max(max - min, 1e-6), 0, 1), 0, 1, 0),
        BorderSizePixel = 0,
        Parent = bar,
        Theme = {
            BackgroundColor3 = 'Accent',
        },
    })

    corner(fill, 2)

    local api = {}

    function api:Set(v, silent)
        value = math.clamp(v, min, max)

        local a = (value - min) / math.max(max - min, 1e-6)

        tween(fill, 0.2, {
            Size = UDim2.new(a, 0, 1, 0),
        })

        valueLabel.Text = tostring(pct(value)) .. suffix

        if not silent and opt.Callback then
            task.spawn(opt.Callback, value)
        end
    end
    function api:Get()
        return value
    end

    api.Instance = row

    return api
end
function Section:CreateColorPicker(opt)
    opt = opt or {}

    local color = opt.Default or Color3.fromRGB(255, 255, 255)
    local h, s, v = color:ToHSV()
    local open = false
    local row = rowBase(self, ROW_H)

    rowLabel(row, opt.Icon, opt.Name or 'Color', opt.Description)

    local swatch = new('TextButton', {
        Text = '',
        AutoButtonColor = false,
        BorderSizePixel = 0,
        BackgroundColor3 = color,
        Size = UDim2.new(0, 46, 0, CTRL_H),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -14, 0.5, 0),
        Parent = row,
    })

    corner(swatch, CTRL_R)
    stroke(swatch)

    local overlay = self.window and self.window.overlay
    local PANEL_W, PANEL_H = 210, 190
    local panel = new('Frame', {
        Size = UDim2.new(0, PANEL_W, 0, 0),
        ClipsDescendants = true,
        Visible = false,
        AnchorPoint = overlay and Vector2.new(0, 0) or Vector2.new(1, 0),
        Position = overlay and UDim2.new(0, 0, 0, 0) or UDim2.new(1, -14, 0.5, 18),
        BorderSizePixel = 0,
        ZIndex = 150,
        Parent = overlay or row,
        Theme = {
            BackgroundColor3 = 'Elevated',
        },
    })

    local function place()
        if not overlay then
            return
        end

        local rootAbs = self.window.root.AbsolutePosition
        local rootSize = self.window.root.AbsoluteSize
        local sp = swatch.AbsolutePosition
        local x = math.clamp(sp.X - rootAbs.X - PANEL_W + swatch.AbsoluteSize.X, 8, math.max(8, rootSize.X - PANEL_W - 8))

        panel.Position = UDim2.new(0, x, 0, sp.Y - rootAbs.Y + swatch.AbsoluteSize.Y + 6)
    end

    corner(panel, 10)
    stroke(panel)

    local sv = new('Frame', {
        Active = true,
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromHSV(h, 1, 1),
        Position = UDim2.new(0, 12, 0, 12),
        Size = UDim2.new(1, -24, 0, 100),
        ZIndex = 151,
        Parent = panel,
    })

    corner(sv, 8)

    new('UIGradient', {
        Color = ColorSequence.new(Color3.fromRGB(255, 255, 255), Color3.fromRGB(255, 255, 255)),
        Transparency = NumberSequence.new(0, 1),
        Parent = sv,
    })

    local svBlack = new('Frame', {
        BorderSizePixel = 0,
        BackgroundColor3 = Color3.fromRGB(0, 0, 0),
        Size = UDim2.new(1, 0, 1, 0),
        ZIndex = 152,
        Parent = sv,
    })

    corner(svBlack, 8)
    new('UIGradient', {
        Rotation = 90,
        Transparency = NumberSequence.new(1, 0),
        Parent = svBlack,
    })

    local svCursor = new('Frame', {
        AnchorPoint = Vector2.new(0.5, 0.5),
        Size = UDim2.new(0, 10, 0, 10),
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BorderSizePixel = 0,
        ZIndex = 154,
        Parent = sv,
    })

    corner(svCursor, 5)
    stroke(svCursor, 'Stroke', 1.5)

    local hue = new('Frame', {
        Active = true,
        BorderSizePixel = 0,
        Position = UDim2.new(0, 12, 0, 124),
        Size = UDim2.new(1, -24, 0, 14),
        ZIndex = 151,
        Parent = panel,
    })

    corner(hue, 7)
    new('UIGradient', {
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
            ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 255, 0)),
            ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 0)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)),
            ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 0, 255)),
            ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 0, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)),
        }),
        Parent = hue,
    })

    local hueCursor = new('Frame', {
        AnchorPoint = Vector2.new(0.5, 0.5),
        Size = UDim2.new(0, 4, 1, 4),
        Position = UDim2.new(0, 0, 0.5, 0),
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BorderSizePixel = 0,
        ZIndex = 154,
        Parent = hue,
    })

    corner(hueCursor, 2)
    stroke(hueCursor, 'Stroke', 1.5)

    local hexBox = new('TextBox', {
        Text = string.format('#%02X%02X%02X', math.floor(color.R * 255 + 0.5), math.floor(color.G * 255 + 0.5), math.floor(color.B * 255 + 0.5)),
        Font = Enum.Font.Code,
        TextSize = 13,
        ClearTextOnFocus = false,
        TextXAlignment = Enum.TextXAlignment.Center,
        BorderSizePixel = 0,
        Position = UDim2.new(0, 12, 0, 148),
        Size = UDim2.new(1, -24, 0, 30),
        ZIndex = 151,
        Parent = panel,
        Theme = {
            TextColor3 = 'Text',
            BackgroundColor3 = 'Elevated',
        },
    })

    corner(hexBox, 8)
    stroke(hexBox)

    local api = {}

    local function apply(silent)
        color = Color3.fromHSV(h, s, v)

        swatch.BackgroundColor3 = color
        sv.BackgroundColor3 = Color3.fromHSV(h, 1, 1)
        svCursor.Position = UDim2.new(s, 0, 1 - v, 0)
        hueCursor.Position = UDim2.new(h, 0, 0.5, 0)
        hexBox.Text = string.format('#%02X%02X%02X', math.floor(color.R * 255 + 0.5), math.floor(color.G * 255 + 0.5), math.floor(color.B * 255 + 0.5))

        if not silent and opt.Callback then
            task.spawn(opt.Callback, color)
        end
    end

    local svDragging, hueDragging = false, false

    local function svFromInput(input)
        local ap, asz = sv.AbsolutePosition, sv.AbsoluteSize

        if asz.X <= 0 or asz.Y <= 0 then
            return
        end

        s = math.clamp((input.Position.X - ap.X) / asz.X, 0, 1)
        v = 1 - math.clamp((input.Position.Y - ap.Y) / asz.Y, 0, 1)

        apply()
    end
    local function hueFromInput(input)
        local ap, asz = hue.AbsolutePosition, hue.AbsoluteSize

        if asz.X <= 0 then
            return
        end

        h = math.clamp((input.Position.X - ap.X) / asz.X, 0, 1)

        apply()
    end

    sv.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            svDragging = true

            svFromInput(input)
        end
    end)
    hue.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            hueDragging = true

            hueFromInput(input)
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if input.UserInputType ~= Enum.UserInputType.MouseMovement and input.UserInputType ~= Enum.UserInputType.Touch then
            return
        end
        if svDragging then
            svFromInput(input)
        end
        if hueDragging then
            hueFromInput(input)
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            svDragging, hueDragging = false, false
        end
    end)
    hexBox.FocusLost:Connect(function()
        local text = hexBox.Text:gsub('#', '')

        if #text == 6 and text:match('^%x+$') then
            local r = tonumber(text:sub(1, 2), 16)
            local g = tonumber(text:sub(3, 4), 16)
            local b = tonumber(text:sub(5, 6), 16)

            color = Color3.fromRGB(r, g, b)
            h, s, v = color:ToHSV()
        end

        apply()
    end)

    function api:Set(c, silent)
        color = c
        h, s, v = color:ToHSV()

        apply(silent)
    end
    function api:Get()
        return color
    end
    function api:Open()
        if Ui._openPopup and Ui._openPopup ~= api then
            pcall(function()
                Ui._openPopup:Close()
            end)
        end
        if Ui._openDropdown then
            pcall(function()
                Ui._openDropdown:Close()
            end)
        end

        Ui._openPopup = api
        open = true
        panel.Visible = true

        place()
        tween(panel, 0.18, {
            Size = UDim2.new(0, PANEL_W, 0, PANEL_H),
        })
    end
    function api:Close()
        open = false

        if Ui._openPopup == api then
            Ui._openPopup = nil
        end

        tween(panel, 0.15, {
            Size = UDim2.new(0, PANEL_W, 0, 0),
        })
        task.delay(0.16, function()
            if not open then
                panel.Visible = false
            end
        end)
    end

    swatch.MouseButton1Click:Connect(function()
        if open then
            api:Close()
        else
            api:Open()
        end
    end)
    row.AncestryChanged:Connect(function()
        if not row:IsDescendantOf(game) then
            panel:Destroy()
        end
    end)
    UserInputService.InputBegan:Connect(function(input)
        if not open then
            return
        end
        if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then
            return
        end

        local p = input.Position
        local function inside(o)
            local a, b = o.AbsolutePosition, o.AbsoluteSize

            return p.X >= a.X and p.X <= a.X + b.X and p.Y >= a.Y and p.Y <= a.Y + b.Y
        end

        if not inside(swatch) and not inside(panel) then
            api:Close()
        end
    end)

    apply(true)

    api.Instance = row

    return api
end
function Section:CreateMultiDropdown(opt)
    opt = opt or {}

    local options = opt.Options or {}
    local selected = {}

    if opt.Default then
        for _, v in ipairs(opt.Default)do
            selected[v] = true
        end
    end

    local open = false
    local row = rowBase(self, ROW_H)

    rowLabel(row, opt.Icon, opt.Name or 'Multi-Select', opt.Description)

    local head = new('TextButton', {
        Text = '',
        AutoButtonColor = false,
        BorderSizePixel = 0,
        Size = UDim2.new(0, CTRL_W, 0, CTRL_H),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -14, 0.5, 0),
        Parent = row,
        Theme = {
            BackgroundColor3 = 'Elevated',
        },
    })

    corner(head, CTRL_R)
    stroke(head)

    local function summary()
        local count = 0

        for _ in pairs(selected)do
            count = count + 1
        end
        if count == 0 then
            return opt.Placeholder or 'None selected'
        end
        if count == #options then
            return 'All selected'
        end

        return count .. ' selected'
    end

    local sel = new('TextLabel', {
        Text = summary(),
        Font = Enum.Font.GothamMedium,
        TextSize = 12,
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 12, 0, 0),
        Size = UDim2.new(1, -34, 1, 0),
        Parent = head,
        Theme = {
            TextColor3 = 'Text',
        },
    })
    local arrow = iconLabel({
        Icon = Ui.Icons.chevronDown,
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -10, 0.5, 0),
        Size = UDim2.new(0, 14, 0, 14),
        Parent = head,
        Theme = {
            ImageColor3 = 'SubText',
        },
    })
    local overlay = self.window and self.window.overlay
    local menu = new('ScrollingFrame', {
        Size = UDim2.new(0, CTRL_W, 0, 0),
        ClipsDescendants = true,
        Visible = false,
        Active = true,
        AnchorPoint = overlay and Vector2.new(0, 0) or Vector2.new(1, 0),
        Position = overlay and UDim2.new(0, 0, 0, 0) or UDim2.new(1, -14, 0.5, 18),
        BorderSizePixel = 0,
        ZIndex = 150,
        CanvasSize = UDim2.new(),
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        ScrollBarThickness = 3,
        ScrollBarImageTransparency = 0.5,
        ScrollingDirection = Enum.ScrollingDirection.Y,
        Parent = overlay or row,
        Theme = {
            BackgroundColor3 = 'Elevated',
        },
    })

    -- Returns the height the menu should animate to. The menu is placed inside
    -- the window overlay and flipped above the control when there is not
    -- enough room below (last row / long option lists), and it is always
    -- clamped to the window so it can never overflow or hide behind content.
    local function place(wantedH)
        wantedH = wantedH or 0

        if not overlay then
            return wantedH
        end

        local root = self.window.root
        local rootAbs, rootSize = root.AbsolutePosition, root.AbsoluteSize
        local hp, hs = head.AbsolutePosition, head.AbsoluteSize
        local relX = hp.X - rootAbs.X
        local relY = hp.Y - rootAbs.Y
        local below = rootSize.Y - (relY + hs.Y) - 10
        local above = relY - 10
        local flip = false
        local h = wantedH

        if wantedH > below and above > below then
            flip = true
            h = math.min(wantedH, above)
        else
            h = math.min(wantedH, below)
        end

        h = math.max(math.floor(h), 34)
        relX = math.clamp(relX, 6, math.max(6, rootSize.X - CTRL_W - 6))
        menu.Position = UDim2.new(0, relX, 0, flip and (relY - h - 6) or (relY + hs.Y + 6))

        return h
    end

    corner(menu, 8)
    stroke(menu)

    local ml = list(menu, Enum.FillDirection.Vertical, 2)

    ml.VerticalAlignment = Enum.VerticalAlignment.Top

    pad(menu, 4, 4, 4, 4)

    local api = {}

    local function rebuild()
        for _, c in ipairs(menu:GetChildren())do
            if c:IsA('TextButton') then
                c:Destroy()
            end
        end
        for i, o in ipairs(options)do
            local item = new('TextButton', {
                Text = '',
                AutoButtonColor = false,
                BorderSizePixel = 0,
                BackgroundTransparency = 1,
                ZIndex = 151,
                Size = UDim2.new(1, 0, 0, 26),
                LayoutOrder = i,
                Parent = menu,
                Theme = {
                    BackgroundColor3 = 'Hover',
                },
            })

            corner(item, 6)

            local tick = new('Frame', {
                AnchorPoint = Vector2.new(0, 0.5),
                Size = UDim2.new(0, 14, 0, 14),
                Position = UDim2.new(0, 8, 0.5, 0),
                BorderSizePixel = 0,
                ZIndex = 152,
                Parent = item,
                Theme = {
                    BackgroundColor3 = selected[o] and 'Accent' or 'TrackEmpty',
                },
            })

            corner(tick, 4)
            new('TextLabel', {
                Text = tostring(o),
                Font = Enum.Font.Gotham,
                TextSize = 12,
                TextXAlignment = Enum.TextXAlignment.Left,
                BackgroundTransparency = 1,
                ZIndex = 152,
                Position = UDim2.new(0, 30, 0, 0),
                Size = UDim2.new(1, -38, 1, 0),
                Parent = item,
                Theme = {
                    TextColor3 = 'Text',
                },
            })

            item.MouseEnter:Connect(function()
                item.BackgroundTransparency = 0
            end)
            item.MouseLeave:Connect(function()
                item.BackgroundTransparency = 1
            end)
            item.MouseButton1Click:Connect(function()
                selected[o] = not selected[o] or nil

                if selected[o] == false then
                    selected[o] = nil
                end

                tick.BackgroundColor3 = (selected[o] and ACTIVE.Accent) or ACTIVE.TrackEmpty
                sel.Text = summary()

                if opt.Callback then
                    local arr = {}

                    for _, v in ipairs(options)do
                        if selected[v] then
                            table.insert(arr, v)
                        end
                    end

                    task.spawn(opt.Callback, arr)
                end
            end)
        end
    end

    function api:Open()
        if Ui._openPopup and Ui._openPopup ~= api then
            pcall(function()
                Ui._openPopup:Close()
            end)
        end
        if Ui._openDropdown then
            pcall(function()
                Ui._openDropdown:Close()
            end)
        end

        Ui._openPopup = api
        open = true
        menu.Visible = true

        menu.Size = UDim2.new(0, CTRL_W, 0, 0)
        menu.CanvasPosition = Vector2.new(0, 0)

        local h = place(#options * 28 + 8)

        tween(menu, 0.18, {
            Size = UDim2.new(0, CTRL_W, 0, h),
        })
        tween(arrow, 0.18, {Rotation = 180})
    end
    function api:Close()
        open = false

        if Ui._openPopup == api then
            Ui._openPopup = nil
        end

        tween(menu, 0.15, {
            Size = UDim2.new(0, CTRL_W, 0, 0),
        })
        tween(arrow, 0.15, {Rotation = 0})
        task.delay(0.16, function()
            if not open then
                menu.Visible = false
            end
        end)
    end
    function api:SetOptions(t)
        options = t

        rebuild()
    end
    function api:Get()
        local arr = {}

        for _, v in ipairs(options)do
            if selected[v] then
                table.insert(arr, v)
            end
        end

        return arr
    end
    function api:Set(arr)
        selected = {}

        for _, v in ipairs(arr or {})do
            selected[v] = true
        end

        sel.Text = summary()

        rebuild()
    end

    head.MouseButton1Click:Connect(function()
        if open then
            api:Close()
        else
            api:Open()
        end
    end)
    local outsideConn

    row.AncestryChanged:Connect(function()
        if not row:IsDescendantOf(game) then
            if outsideConn then
                outsideConn:Disconnect()

                outsideConn = nil
            end

            menu:Destroy()
        end
    end)

    outsideConn = UserInputService.InputBegan:Connect(function(input)
        if not open then
            return
        end
        if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then
            return
        end

        local p = input.Position
        local function inside(o)
            local a, b = o.AbsolutePosition, o.AbsoluteSize

            return p.X >= a.X and p.X <= a.X + b.X and p.Y >= a.Y and p.Y <= a.Y + b.Y
        end

        if not inside(head) and not inside(menu) then
            api:Close()
        end
    end)
    rebuild()

    api.Instance = row

    return api
end
function Section:CreateTable(opt)
    opt = opt or {}

    local headers = opt.Headers or {}
    local rows = opt.Rows or {}
    local widths = opt.Widths
    local rowHeight = opt.RowHeight or 28
    local maxHeight = opt.MaxHeight or 160

    local holder = new('Frame', {
        Size = UDim2.new(1, 0, 0, 0),
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundTransparency = 1,
        LayoutOrder = self:_next(),
        Parent = self.body,
    })

    pad(holder, 14, 14, 6, 10)

    local function colX(i)
        local n = math.max(#headers, 1)

        if widths then
            local sum, before = 0, 0

            for j = 1, #widths do
                sum = sum + widths[j]
            end
            for j = 1, i - 1 do
                before = before + widths[j]
            end

            return before / sum, widths[i] / sum
        end

        return (i - 1) / n, 1 / n
    end

    local function makeRow(parent, cells, bold, order)
        local r = new('Frame', {
            Size = UDim2.new(1, 0, 0, rowHeight),
            BackgroundTransparency = 1,
            LayoutOrder = order,
            Parent = parent,
        })

        for i, text in ipairs(cells)do
            local x, w = colX(i)

            new('TextLabel', {
                Text = tostring(text),
                Font = bold and Enum.Font.GothamBold or Enum.Font.Gotham,
                TextSize = 12,
                TextXAlignment = Enum.TextXAlignment.Left,
                TextTruncate = Enum.TextTruncate.AtEnd,
                BackgroundTransparency = 1,
                Position = UDim2.new(x, 0, 0, 0),
                Size = UDim2.new(w, -6, 1, 0),
                Parent = r,
                Theme = {
                    TextColor3 = bold and 'SubText' or 'Text',
                },
            })
        end

        return r
    end

    if #headers > 0 then
        makeRow(holder, headers, true, 0)
        new('Frame', {
            Size = UDim2.new(1, 0, 0, 1),
            BorderSizePixel = 0,
            LayoutOrder = 1,
            Parent = holder,
            Theme = {
                BackgroundColor3 = 'Stroke',
            },
        })
    end

    local scroller = new('ScrollingFrame', {
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        CanvasSize = UDim2.new(0, 0, 0, 0),
        ScrollBarThickness = 4,
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Size = UDim2.new(1, 0, 0, math.min(maxHeight, math.max(#rows, 1) * rowHeight)),
        LayoutOrder = 2,
        Parent = holder,
        Theme = {
            ScrollBarImageColor3 = 'Dim',
        },
    })

    list(scroller, Enum.FillDirection.Vertical, 0)

    local api = {}

    local function rebuildRows()
        for _, c in ipairs(scroller:GetChildren())do
            if c:IsA('Frame') then
                c:Destroy()
            end
        end
        for i, row in ipairs(rows)do
            makeRow(scroller, row, false, i)
        end

        scroller.Size = UDim2.new(1, 0, 0, math.min(maxHeight, math.max(#rows, 1) * rowHeight))
    end

    function api:SetRows(t)
        rows = t

        rebuildRows()
    end
    function api:AddRow(r)
        table.insert(rows, r)

        rebuildRows()
    end
    function api:Clear()
        rows = {}

        rebuildRows()
    end

    rebuildRows()

    api.Instance = holder

    return api
end

local Tab = {}

Tab.__index = Tab

function Tab:CreateSection(title)
    local s = setmetatable({
        _count = 0,
        window = self.window,
    }, Section)
    local holder = new('Frame', {
        Size = UDim2.new(1, 0, 0, 0),
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundTransparency = 1,
        LayoutOrder = self:_next(),
        Parent = self.page,
    })
    local hl = list(holder, Enum.FillDirection.Vertical, 8)

    hl.VerticalAlignment = Enum.VerticalAlignment.Top

    if title and title ~= '' then
        new('TextLabel', {
            Text = string.upper(title),
            Font = Enum.Font.GothamBold,
            TextSize = 11,
            TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 0, 16),
            LayoutOrder = 0,
            Parent = holder,
            Theme = {
                TextColor3 = 'SubText',
            },
        })
    end

    local card = new('Frame', {
        Size = UDim2.new(1, 0, 0, 0),
        AutomaticSize = Enum.AutomaticSize.Y,
        BorderSizePixel = 0,
        LayoutOrder = 1,
        Parent = holder,
    })

    corner(card, 14)
    glass(card)

    local body = new('Frame', {
        Size = UDim2.new(1, 0, 0, 0),
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundTransparency = 1,
        Parent = card,
    })
    local bl = list(body, Enum.FillDirection.Vertical, 0)

    bl.VerticalAlignment = Enum.VerticalAlignment.Top

    pad(body, 0, 0, 4, 8)

    s.holder, s.card, s.body = holder, card, body

    return s
end
function Tab:CreateGroup(title)
    local s = self:CreateSection(title)

    s.card.BackgroundTransparency = 1

    for _, c in ipairs(s.card:GetChildren())do
        if c:IsA('UIStroke') then
            c.Enabled = false
        elseif c:IsA('UIGradient') then
            c:Destroy()
        end
    end

    local bl = s.body:FindFirstChildOfClass('UIListLayout')

    if bl then
        bl.Padding = UDim.new(0, 8)
    end

    return s
end
function Tab:CreateCardsGlass(opt)
    opt = opt or {}

    local s = self:CreateGroup(opt.Title)

    return s:CreateCardsGlass(opt)
end
Tab.CreateCards = Tab.CreateCardsGlass

function Tab:_next()
    self._order = (self._order or 0) + 1

    return self._order
end
function Tab:Select()
    self.window:SelectTab(self.id)
end

local Window = {}

Window.__index = Window

function Ui:CreateWindow(cfg)
    cfg = cfg or {}

    Ui:SetTheme(cfg.Theme or 'Dark')

    local self = setmetatable({}, Window)

    self.tabs, self.navItems, self.tabCount = {}, {}, 0
    self.gui = makeScreenGui()

    local size = cfg.Size or UDim2.new(0, 900, 0, 560)
    local root = new('Frame', {
        Name = 'Window',
        Size = size,
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        BorderSizePixel = 0,
        ClipsDescendants = true,
        Parent = self.gui,
        Theme = {
            BackgroundColor3 = 'Background',
        },
    })

    corner(root, 14)
    stroke(root)

    self.root = root

    do
        local vp = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
        local w = math.min(size.X.Offset, math.floor(vp.X - 24))
        local h = math.min(size.Y.Offset, math.floor(vp.Y - 24))

        size = UDim2.new(0, math.max(320, w), 0, math.max(240, h))
        root.Size = size
    end

    root.Size = UDim2.new(0, size.X.Offset * 0.92, 0, size.Y.Offset * 0.92)
    root.BackgroundTransparency = 1

    tween(root, 0.3, {
        Size = size,
        BackgroundTransparency = 0,
    })

    local title = new('Frame', {
        Size = UDim2.new(1, 0, 0, 46),
        BackgroundTransparency = 1,
        Parent = root,
    })

    makeDraggable(root, title)

    self.titleBar = title

    iconLabel({
        Icon = cfg.Logo or Ui.Icons.logo,
        AnchorPoint = Vector2.new(0, 0.5),
        Position = UDim2.new(0, 18, 0.5, 0),
        Size = UDim2.new(0, 22, 0, 22),
        Parent = title,
        Theme = {
            ImageColor3 = 'Text',
        },
    })

    local nameLbl = new('TextLabel', {
        Text = cfg.Title or 'Zeox',
        Font = Enum.Font.GothamBold,
        TextSize = 15,
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 46, 0, 0),
        Size = UDim2.new(0, 70, 1, 0),
        Parent = title,
        Theme = {
            TextColor3 = 'Text',
        },
    })
    local nameTextWidth = TextService:GetTextSize(nameLbl.Text, nameLbl.TextSize, nameLbl.Font, Vector2.new(1000, 100)).X
    local verLbl = new('TextLabel', {
        Text = cfg.Version or Ui.Version,
        Font = Enum.Font.Gotham,
        TextSize = 10,
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 46 + 8 + nameTextWidth, 0, 0),
        Size = UDim2.new(0, 44, 1, 0),
        Parent = title,
        Theme = {
            TextColor3 = 'Dim',
        },
    })
    local verTextWidth = TextService:GetTextSize(verLbl.Text, verLbl.TextSize, verLbl.Font, Vector2.new(1000, 100)).X
    local visHolder = new('Frame', {
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundTransparency = 1,
        Size = UDim2.new(0, 30, 0, 17),
        Position = UDim2.new(0, verLbl.Position.X.Offset + verTextWidth + 10, 0.5, 0),
        Parent = title,
    })

    self.Visualizer = Visualizer.new(visHolder, 4)

    local nav = new('Frame', {
        BackgroundTransparency = 1,
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        Size = UDim2.new(0, 0, 0, 30),
        AutomaticSize = Enum.AutomaticSize.X,
        Parent = title,
    })
    local navList = list(nav, Enum.FillDirection.Horizontal, 4, Enum.HorizontalAlignment.Center)

    navList.VerticalAlignment = Enum.VerticalAlignment.Center
    self.nav = nav

    local winBtns = new('Frame', {
        Name = 'WindowButtons',
        BackgroundTransparency = 1,
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -14, 0.5, 0),
        Size = UDim2.new(0, 0, 0, 26),
        AutomaticSize = Enum.AutomaticSize.X,
        Parent = title,
    })
    local winList = list(winBtns, Enum.FillDirection.Horizontal, 6, Enum.HorizontalAlignment.Right)

    winList.VerticalAlignment = Enum.VerticalAlignment.Center

    local function winBtn(icon, order)
        local b = iconButton({
            Icon = icon,
            LayoutOrder = order,
            Size = UDim2.new(0, 26, 0, 26),
            BackgroundTransparency = 1,
            Parent = winBtns,
            Theme = {
                ImageColor3 = 'Dim',
                BackgroundColor3 = 'Hover',
            },
        })
        local ip = new('UIPadding', {Parent = b})

        ip.PaddingTop, ip.PaddingBottom = UDim.new(0, 7), UDim.new(0, 7)
        ip.PaddingLeft, ip.PaddingRight = UDim.new(0, 7), UDim.new(0, 7)

        new('UICorner', {
            CornerRadius = UDim.new(1, 0),
            Parent = b,
        })

        local bs = stroke(b, 'Stroke', 1)

        bs.Transparency = 0.55
        b.MouseEnter:Connect(function()
            tween(b, 0.14, {BackgroundTransparency = 0})
            tween(b, 0.14, {ImageColor3 = ACTIVE.Text})
            tween(bs, 0.14, {Transparency = 0.15})
        end)
        b.MouseLeave:Connect(function()
            tween(b, 0.14, {BackgroundTransparency = 1})
            tween(b, 0.14, {ImageColor3 = ACTIVE.Dim})
            tween(bs, 0.14, {Transparency = 0.55})
        end)

        return b
    end

    local sideBtn = winBtn(Ui.Icons.tab, 0)

    self.sidebarButton = sideBtn

    sideBtn.MouseButton1Click:Connect(function()
        self:ToggleSidebar()
    end)

    local minBtn = winBtn(118026365011536, 1)
    local maxBtn = winBtn(76045941763188, 2)
    local closeBtn = winBtn(110786993356448, 3)


    self.minimized = false

    minBtn.MouseButton1Click:Connect(function()
        self:Minimize()
    end)
    maxBtn.MouseButton1Click:Connect(function()
        self:Maximize()
    end)
    closeBtn.MouseButton1Click:Connect(function()
        self:Close()
    end)

    local body = new('Frame', {
        Name = 'Body',
        Position = UDim2.new(0, 0, 0, 46),
        Size = UDim2.new(1, 0, 1, -46),
        BackgroundTransparency = 1,
        ClipsDescendants = true,
        Parent = root,
    })

    self.body = body
    local sidebar = new('Frame', {
        Size = UDim2.new(0, 200, 1, 0),
        BorderSizePixel = 0,
        ClipsDescendants = true,
        Parent = body,
        Theme = {
            BackgroundColor3 = 'Sidebar',
        },
    })

    -- Root is a rounded, ClipsDescendants frame, but ClipsDescendants always
    -- clips to a plain rectangle (it ignores UICorner). Without its own
    -- matching corner, this opaque panel's sharp square edge pokes past
    -- root's rounded corner and reads as a jagged notch. Rounding it too
    -- (all 4 corners - the top two sit under the title bar so it's
    -- invisible there) keeps the whole window edge smooth.
    corner(sidebar, 14)

    self.sidebar = sidebar

    new('Frame', {
        Size = UDim2.new(0, 1, 1, 0),
        Position = UDim2.new(1, -1, 0, 0),
        BorderSizePixel = 0,
        Parent = sidebar,
        Theme = {
            BackgroundColor3 = 'Stroke',
        },
    })

    self.sidebarTitle = new('TextLabel', {
        Text = cfg.SidebarTitle or 'Explorer',
        Font = Enum.Font.GothamBold,
        TextSize = 17,
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 18, 0, 8),
        Size = UDim2.new(1, -70, 0, 30),
        Parent = sidebar,
        Theme = {
            TextColor3 = 'Text',
        },
    })

    local collapse = iconButton({
        Icon = Ui.Icons.chevronLeft,
        AnchorPoint = Vector2.new(1, 0),
        Position = UDim2.new(1, -14, 0, 14),
        Size = UDim2.new(0, 18, 0, 18),
        Parent = sidebar,
        Theme = {
            ImageColor3 = 'SubText',
        },
    })

    collapse.MouseButton1Click:Connect(function()
        self:ToggleSidebar()
    end)

    local searchWrap = new('Frame', {
        Position = UDim2.new(0, 14, 0, 46),
        Size = UDim2.new(1, -28, 0, 32),
        BorderSizePixel = 0,
        Parent = sidebar,
        Theme = {
            BackgroundColor3 = 'Elevated',
        },
    })

    corner(searchWrap, 8)
    stroke(searchWrap)
    iconLabel({
        Icon = Ui.Icons.search,
        AnchorPoint = Vector2.new(0, 0.5),
        Position = UDim2.new(0, 10, 0.5, 0),
        Size = UDim2.new(0, 15, 0, 15),
        Parent = searchWrap,
        Theme = {
            ImageColor3 = 'SubText',
        },
    })

    local search = new('TextBox', {
        Text = '',
        PlaceholderText = cfg.SearchPlaceholder or 'Search...',
        Font = Enum.Font.Gotham,
        TextSize = 12,
        ClearTextOnFocus = false,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 32, 0, 0),
        Size = UDim2.new(1, -42, 1, 0),
        TextXAlignment = Enum.TextXAlignment.Left,
        Parent = searchWrap,
        Theme = {
            TextColor3 = 'Text',
            PlaceholderColor3 = 'Dim',
        },
    })

    self.search = search

    local tabHolder = new('ScrollingFrame', {
        Position = UDim2.new(0, 10, 0, 90),
        Size = UDim2.new(1, -20, 1, -104),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 2,
        CanvasSize = UDim2.new(),
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        ScrollBarImageTransparency = 0.6,
        Parent = sidebar,
    })
    local thl = list(tabHolder, Enum.FillDirection.Vertical, 2)

    thl.VerticalAlignment = Enum.VerticalAlignment.Top
    self.tabHolder = tabHolder

    local searchClear = iconButton({
        Icon = Ui.Icons.close or Ui.Icons.x,
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -8, 0.5, 0),
        Size = UDim2.new(0, 14, 0, 14),
        Visible = false,
        Parent = searchWrap,
        Theme = {
            ImageColor3 = 'SubText',
        },
    })

    self.searchClear = searchClear

    local searchInfo = new('TextLabel', {
        Text = '',
        Font = Enum.Font.Gotham,
        TextSize = 10,
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 16, 0, 78),
        Size = UDim2.new(1, -32, 0, 12),
        Visible = false,
        Parent = sidebar,
        Theme = {
            TextColor3 = 'Dim',
        },
    })

    self.searchInfo = searchInfo

    -- Search+ : searches tab names AND every control / card inside every tab.
    function self:ApplySearch(text)
        local q = string.lower(text or '')
        local total, visibleTabs, firstHit = 0, 0, nil

        for i, t in pairs(self.tabs)do
            local tabMatch = q == '' or string.find(string.lower(t.name), q, 1, true) ~= nil
            local hits = 0

            for _, d in ipairs(t.page:GetDescendants())do
                local st = d:GetAttribute('SearchText')

                if st then
                    local ok = q == '' or tabMatch or string.find(st, q, 1, true) ~= nil

                    d.Visible = ok

                    if ok and q ~= '' and not tabMatch then
                        hits = hits + 1
                    end
                end
            end

            for _, holder in ipairs(t.page:GetChildren())do
                if holder:IsA('GuiObject') then
                    local any = q == '' or tabMatch

                    if not any then
                        for _, d in ipairs(holder:GetDescendants())do
                            if d:GetAttribute('SearchText') and d.Visible then
                                any = true

                                break
                            end
                        end
                    end

                    holder.Visible = any
                end
            end

            total = total + hits

            local show = (q == '' or tabMatch or hits > 0) and not t.hiddenFromSidebar

            t.button.Visible = show

            if show then
                visibleTabs = visibleTabs + 1

                if not firstHit and q ~= '' and (hits > 0 or tabMatch) then
                    firstHit = i
                end
            end
        end

        searchClear.Visible = q ~= ''
        searchInfo.Visible = q ~= ''
        searchInfo.Text = visibleTabs == 0 and 'No results' or (visibleTabs .. ' tab(s) • ' .. total .. ' result(s)')

        return firstHit
    end

    search:GetPropertyChangedSignal('Text'):Connect(function()
        self:ApplySearch(search.Text)
    end)
    search.FocusLost:Connect(function(enter)
        if enter then
            local first = self:ApplySearch(search.Text)

            if first then
                self:SelectTab(first)
            end
        end
    end)
    searchClear.MouseButton1Click:Connect(function()
        search.Text = ''
    end)

    local content = new('Frame', {
        Position = UDim2.new(0, 200, 0, 0),
        Size = UDim2.new(1, -200, 1, 0),
        BackgroundTransparency = 1,
        ClipsDescendants = true,
        Parent = body,
    })

    self.content = content
    self.sidebarOpen = true
    self.sidebarReopen = iconButton({
        Icon = Ui.Icons.chevron,
        Position = UDim2.new(0, 8, 0, 8),
        Size = UDim2.new(0, 28, 0, 28),
        Visible = false,
        ZIndex = 90,
        BackgroundTransparency = 0,
        Parent = content,
        Theme = {
            ImageColor3 = 'Text',
            BackgroundColor3 = 'Elevated',
        },
    })

    do
        local ip = new('UIPadding', {Parent = self.sidebarReopen})

        ip.PaddingTop, ip.PaddingBottom = UDim.new(0, 6), UDim.new(0, 6)
        ip.PaddingLeft, ip.PaddingRight = UDim.new(0, 6), UDim.new(0, 6)
    end

    corner(self.sidebarReopen, 8)
    stroke(self.sidebarReopen)
    self.sidebarReopen.MouseButton1Click:Connect(function()
        self:ToggleSidebar(true)
    end)

    if cfg.FloatingToggle ~= false then
        task.defer(function()
            self:CreateFloatingToggle(type(cfg.FloatingToggle) == 'table' and cfg.FloatingToggle or nil)
        end)
    end

    self.statusHeight = 0
    self.overlay = new('Frame', {
        Name = 'Overlay',
        BackgroundTransparency = 1,
        Size = UDim2.new(1, 0, 1, 0),
        ZIndex = 120,
        Parent = root,
    })
    self.statusBar = new('Frame', {
        AnchorPoint = Vector2.new(0, 1),
        Position = UDim2.new(0, 0, 1, 0),
        Size = UDim2.new(1, 0, 0, 32),
        BorderSizePixel = 0,
        Visible = false,
        ZIndex = 60,
        Parent = content,
        Theme = {
            BackgroundColor3 = 'Sidebar',
        },
    })

    corner(self.statusBar, 14)
    new('Frame', {
        Size = UDim2.new(1, 0, 0, 1),
        BorderSizePixel = 0,
        Parent = self.statusBar,
        Theme = {
            BackgroundColor3 = 'Stroke',
        },
    })

    return self
end
function Window:AddNavIcon(icon, tooltipOrCallback, maybeCallback)
    local callback = type(tooltipOrCallback) == 'function' and tooltipOrCallback or maybeCallback
    local b = iconButton({
        Icon = icon,
        Size = UDim2.new(0, 32, 0, 30),
        Parent = self.nav,
        Theme = {
            ImageColor3 = 'SubText',
            BackgroundColor3 = 'Hover',
        },
    })
    local ip = new('UIPadding', {Parent = b})

    ip.PaddingTop, ip.PaddingBottom = UDim.new(0, 7), UDim.new(0, 7)
    ip.PaddingLeft, ip.PaddingRight = UDim.new(0, 8), UDim.new(0, 8)

    corner(b, 8)
    b.MouseEnter:Connect(function()
        b.BackgroundTransparency = 0
        b.ImageColor3 = ACTIVE.Text
    end)
    b.MouseLeave:Connect(function()
        if not b:GetAttribute('Active') then
            b.BackgroundTransparency = 1
            b.ImageColor3 = ACTIVE.SubText
        end
    end)
    b.MouseButton1Click:Connect(function()
        for _, o in ipairs(self.nav:GetChildren())do
            if o:IsA('ImageButton') or o:IsA('TextButton') then
                o:SetAttribute('Active', false)

                o.BackgroundTransparency = 1

                if o:IsA('ImageButton') then
                    o.ImageColor3 = ACTIVE.SubText
                else
                    o.TextColor3 = ACTIVE.SubText
                end
            end
        end

        b:SetAttribute('Active', true)

        b.BackgroundTransparency = 0
        b.ImageColor3 = ACTIVE.Text

        if callback then
            task.spawn(callback)
        end
    end)

    return b
end
function Window:CreateTab(cfg)
    cfg = cfg or {}
    self.tabCount = self.tabCount + 1

    local id = self.tabCount
    local btn = new('TextButton', {
        Text = '',
        AutoButtonColor = false,
        BorderSizePixel = 0,
        BackgroundTransparency = 1,
        Size = UDim2.new(1, 0, 0, 38),
        LayoutOrder = id,
        Parent = self.tabHolder,
        Theme = {
            BackgroundColor3 = 'Selected',
        },
    })

    corner(btn, 8)
    iconLabel({
        Icon = cfg.Icon or Ui.Icons.box,
        AnchorPoint = Vector2.new(0, 0.5),
        Position = UDim2.new(0, 10, 0.5, 0),
        Size = UDim2.new(0, 18, 0, 18),
        Parent = btn,
        Theme = {
            ImageColor3 = 'SubText',
        },
    })
    new('TextLabel', {
        Text = cfg.Name or 'Tab',
        Font = Enum.Font.GothamBold,
        TextSize = 13,
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 38, 0, 0),
        Size = UDim2.new(1, -46, 1, 0),
        Parent = btn,
        Theme = {
            TextColor3 = 'Text',
        },
    })

    local page = new('ScrollingFrame', {
        Visible = false,
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Position = UDim2.new(0, 0, 0, 0),
        Size = UDim2.new(1, 0, 1, -(self.statusHeight or 0)),
        CanvasSize = UDim2.new(),
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        ScrollBarThickness = 3,
        ScrollBarImageTransparency = 0.7,
        ClipsDescendants = true,
        Parent = self.content,
    })
    local pl = list(page, Enum.FillDirection.Vertical, 18)

    pl.VerticalAlignment = Enum.VerticalAlignment.Top

    pad(page, 22, 24, 20, 30)

    -- Manual canvas sizing: AutomaticCanvasSize under-measures nested
    -- AutomaticSize holders (cards grids), which clipped the last row.
    page.AutomaticCanvasSize = Enum.AutomaticSize.None

    local function syncCanvas()
        page.CanvasSize = UDim2.new(0, 0, 0, pl.AbsoluteContentSize.Y + 60)
    end

    pl:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(syncCanvas)
    task.defer(syncCanvas)

    local tab = setmetatable({
        id = id,
        name = cfg.Name or 'Tab',
        button = btn,
        page = page,
        window = self,
        _order = 0,
    }, Tab)

    self.tabs[id] = tab

    btn.MouseButton1Click:Connect(function()
        self:SelectTab(id)
    end)
    btn.MouseEnter:Connect(function()
        if self.current ~= id then
            tween(btn, 0.12, {BackgroundTransparency = 0.5})
        end
    end)
    btn.MouseLeave:Connect(function()
        if self.current ~= id then
            tween(btn, 0.12, {BackgroundTransparency = 1})
        end
    end)

    if not self.current then
        self:SelectTab(id)
    end

    return tab
end
-- A full tab driven by a title-bar nav icon (the icon row on the right side of
-- the header). It supports every Tab API including cards.
function Window:CreateNavTab(cfg)
    cfg = cfg or {}

    local tab = self:CreateTab(cfg)

    if cfg.ShowInSidebar ~= true then
        tab.hiddenFromSidebar = true
        tab.button.Visible = false
    end

    tab.navButton = self:AddNavIcon(cfg.Icon or Ui.Icons.box, function()
        self:SelectTab(tab.id)

        if cfg.Callback then
            task.spawn(cfg.Callback, tab)
        end
    end)

    return tab
end

-- Draggable floating circle that hides / shows the whole interface.
function Window:CreateFloatingToggle(cfg)
    cfg = cfg or {}

    if self.floatingToggle then
        return self.floatingToggle
    end

    local size = cfg.Size or 46
    local gui = makeScreenGui()

    gui.Name = 'ZeoxFloating'

    local btn = new('ImageButton', {
        Name = 'FloatingToggle',
        Image = cfg.Icon or Ui.Icons.spark or Ui.Icons.box,
        ImageTransparency = 0,
        AutoButtonColor = false,
        BorderSizePixel = 0,
        AnchorPoint = Vector2.new(0, 0),
        Position = cfg.Position or UDim2.new(0, 20, 0.5, -size / 2),
        Size = UDim2.new(0, size, 0, size),
        ZIndex = 50,
        Parent = gui,
        Theme = {
            BackgroundColor3 = 'Elevated',
            ImageColor3 = 'Text',
        },
    })

    do
        local ip = new('UIPadding', {Parent = btn})

        ip.PaddingTop, ip.PaddingBottom = UDim.new(0, 12), UDim.new(0, 12)
        ip.PaddingLeft, ip.PaddingRight = UDim.new(0, 12), UDim.new(0, 12)
    end

    new('UICorner', {CornerRadius = UDim.new(1, 0), Parent = btn})
    stroke(btn)

    local dragging, moved, startPos, startInput = false, false, nil, nil

    btn.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging, moved = true, false
            startInput, startPos = input.Position, btn.Position
        end
    end)

    local moveConn = UserInputService.InputChanged:Connect(function(input)
        if not dragging then
            return
        end
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            local d = input.Position - startInput

            if math.abs(d.X) > 4 or math.abs(d.Y) > 4 then
                moved = true
            end

            btn.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + d.X, startPos.Y.Scale, startPos.Y.Offset + d.Y)
        end
    end)
    local endConn = UserInputService.InputEnded:Connect(function(input)
        if not dragging then
            return
        end
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false

            if not moved then
                self:Toggle()
            end
        end
    end)

    btn.Destroying:Connect(function()
        moveConn:Disconnect()
        endConn:Disconnect()
    end)

    self.floatingToggle = {
        Instance = btn,
        Gui = gui,
        SetVisible = function(_, v)
            btn.Visible = v and true or false
        end,
        Destroy = function()
            gui:Destroy()

            self.floatingToggle = nil
        end,
    }

    return self.floatingToggle
end
function Window:SelectTab(id)
    for i, t in pairs(self.tabs)do
        local active = (i == id)

        t.page.Visible = active

        tween(t.button, 0.15, {
            BackgroundTransparency = active and 0 or 1,
        })

        if active then
            t.page.Size = UDim2.new(1, 0, 1, -(self.statusHeight or 0))
            t.page.Position = UDim2.new(0, 0, 0, 8)

            tween(t.page, 0.25, {
                Position = UDim2.new(0, 0, 0, 0),
            })
        end
    end

    self.current = id
end
function Window:SetSidebarTitle(text)
    self.sidebarTitle.Text = text
end
function Window:ToggleSidebar(force)
    if self.sidebarOpen == nil then
        self.sidebarOpen = true
    end

    local open = force

    if open == nil then
        open = not self.sidebarOpen
    end

    self.sidebarOpen = open

    tween(self.sidebar, 0.25, {
        Size = UDim2.new(0, open and 200 or 0, 1, 0),
    })
    tween(self.content, 0.25, {
        Position = UDim2.new(0, open and 200 or 0, 0, 0),
        Size = UDim2.new(1, open and -200 or 0, 1, 0),
    })

    -- The collapse button lives inside the sidebar, so once the sidebar is
    -- collapsed (or the window is maximized/fullscreen) there would be no way
    -- back to the tab list. This floating button always stays on the content
    -- area so tabs can be reopened at any time.
    if self.sidebarReopen then
        self.sidebarReopen.Visible = not open
    end

    return open
end
function Window:OpenSidebar()
    return self:ToggleSidebar(true)
end
function Window:CloseSidebar()
    return self:ToggleSidebar(false)
end
function Window:_closePopups()
    if Ui._openDropdown then
        pcall(function()
            Ui._openDropdown:Close()
        end)

        Ui._openDropdown = nil
    end
    if self.overlay then
        for _, c in ipairs(self.overlay:GetChildren())do
            if c:IsA('GuiObject') then
                c.Visible = false
            end
        end
    end
end
function Window:Minimize()
    self.minimized = not self.minimized

    self:_closePopups()

    if self.minimized then
        self._restoreSize = self.root.Size
        self.body.Visible = false

        if self.overlay then
            self.overlay.Visible = false
        end

        tween(self.root, 0.22, {
            Size = UDim2.new(self.root.Size.X.Scale, self.root.Size.X.Offset, 0, 46),
        })
    else
        tween(self.root, 0.22, {
            Size = self._restoreSize or UDim2.new(0, 900, 0, 560),
        })
        task.delay(0.1, function()
            if not self.minimized then
                self.body.Visible = true

                if self.overlay then
                    self.overlay.Visible = true
                end
            end
        end)
    end

    return self.minimized
end
function Window:Maximize()
    if self.minimized then
        self:Minimize()
    end

    -- Make sure the tab list is always reachable in fullscreen.
    if self.sidebarReopen then
        self.sidebarReopen.Visible = not (self.sidebarOpen ~= false)
    end
    if self._maxed then
        tween(self.root, 0.25, {
            Size = self._prevSize,
            Position = self._prevPos,
        })

        self._maxed = false
    else
        self._prevSize, self._prevPos = self.root.Size, self.root.Position

        tween(self.root, 0.25, {
            Size = UDim2.new(1, -40, 1, -40),
            Position = UDim2.new(0.5, 0, 0.5, 0),
        })

        self._maxed = true
    end
end
function Window:Close()
    tween(self.root, 0.2, {
        Size = UDim2.new(0, self.root.AbsoluteSize.X * 0.9, 0, self.root.AbsoluteSize.Y * 0.9),
        BackgroundTransparency = 1,
    })
    task.delay(0.25, function()
        if self.Visualizer then
            self.Visualizer:Destroy()
        end

        if self.floatingToggle then
            self.floatingToggle:Destroy()
        end

        self.gui:Destroy()
    end)
end
function Window:Hide()
    self:_closePopups()

    self.root.Visible = false
    self.gui.Enabled = false
    self.hidden = true

    if self.Visualizer then
        self.Visualizer:SetActive(false)
    end
end
function Window:Show()
    self.gui.Enabled = true
    self.root.Visible = true
    self.hidden = false

    if self.Visualizer then
        self.Visualizer:SetActive(true)
    end
end
function Window:Toggle()
    if self.hidden or not self.gui.Enabled then
        self:Show()
    else
        self:Hide()
    end

    return not self.hidden
end
function Window:BindToggleKey(key)
    UserInputService.InputBegan:Connect(function(input, gpe)
        if not gpe and input.KeyCode == key then
            self:Toggle()
        end
    end)
end
function Window:CreateStatusBar(items, rightText)
    self.statusBar.Visible = true
    self.statusHeight = 32

    for _, t in pairs(self.tabs)do
        t.page.Size = UDim2.new(1, 0, 1, -32)
    end

    self._statusHooked = true

    local holder = new('Frame', {
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 12, 0, 0),
        Size = UDim2.new(1, -180, 1, 0),
        Parent = self.statusBar,
    })
    local hl = list(holder, Enum.FillDirection.Horizontal, 18)

    hl.VerticalAlignment = Enum.VerticalAlignment.Center

    local labels = {}

    for i, item in ipairs(items or {})do
        local it = type(item) == 'table' and tostring(item.Text or item.Name or '') or tostring(item)
        local b = new('TextButton', {
            Text = it,
            Font = Enum.Font.GothamMedium,
            TextSize = 11,
            BackgroundTransparency = 1,
            AutoButtonColor = false,
            Size = UDim2.new(0, TextService:GetTextSize(it, 11, Enum.Font.GothamMedium, Vector2.new(400, 20)).X + 6, 1, 0),
            LayoutOrder = i,
            Parent = holder,
            Theme = {
                TextColor3 = i == 1 and 'Text' or 'SubText',
            },
        })

        b.MouseButton1Click:Connect(function()
            for _, o in ipairs(labels)do
                o.TextColor3 = ACTIVE.SubText
            end

            b.TextColor3 = ACTIVE.Text
        end)

        labels[#labels + 1] = b
    end

    local right = new('TextLabel', {
        Text = rightText or '\u{25cf} Ready',
        Font = Enum.Font.Gotham,
        TextSize = 11,
        TextXAlignment = Enum.TextXAlignment.Right,
        BackgroundTransparency = 1,
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, -14, 0.5, 0),
        Size = UDim2.new(0, 160, 1, 0),
        Parent = self.statusBar,
        Theme = {
            TextColor3 = 'SubText',
        },
    })

    return {
        SetStatus = function(_, txt, ok)
            right.Text = (ok and '\u{25cf} ' or '\u{25cf} ') .. txt
            right.TextColor3 = ok and ACTIVE.Success or ACTIVE.SubText
        end,
    }
end
function Window:CreateToolbar(tab, buttons, rightButton)
    local bar = new('Frame', {
        Size = UDim2.new(1, 0, 0, 36),
        BorderSizePixel = 0,
        LayoutOrder = tab:_next(),
        Parent = tab.page,
        Theme = {
            BackgroundColor3 = 'Panel',
        },
    })

    corner(bar, 10)
    stroke(bar)

    local hl = list(bar, Enum.FillDirection.Horizontal, 4)

    hl.VerticalAlignment = Enum.VerticalAlignment.Center

    pad(bar, 8, 8, 0, 0)

    local function mk(def, parent, order)
        local w = TextService:GetTextSize(def.Name, 12, Enum.Font.GothamBold, Vector2.new(400, 20)).X + 44
        local b = new('TextButton', {
            Text = '',
            AutoButtonColor = false,
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            Size = UDim2.new(0, w, 0, 26),
            LayoutOrder = order,
            Parent = parent,
            Theme = {
                BackgroundColor3 = 'Hover',
            },
        })

        corner(b, 6)
        iconLabel({
            Icon = def.Icon or Ui.Icons.play,
            AnchorPoint = Vector2.new(0, 0.5),
            Position = UDim2.new(0, 8, 0.5, 0),
            Size = UDim2.new(0, 15, 0, 15),
            Parent = b,
            Theme = {
                ImageColor3 = def.Disabled and 'Dim' or 'SubText',
            },
        })
        new('TextLabel', {
            Text = def.Name,
            Font = Enum.Font.GothamBold,
            TextSize = 12,
            TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 28, 0, 0),
            Size = UDim2.new(1, -34, 1, 0),
            Parent = b,
            Theme = {
                TextColor3 = def.Disabled and 'Dim' or 'Text',
            },
        })
        b.MouseEnter:Connect(function()
            if not def.Disabled then
                b.BackgroundTransparency = 0
            end
        end)
        b.MouseLeave:Connect(function()
            b.BackgroundTransparency = 1
        end)
        b.MouseButton1Click:Connect(function()
            if not def.Disabled and def.Callback then
                task.spawn(def.Callback)
            end
        end)

        return b
    end

    for i, def in ipairs(buttons or {})do
        mk(def, bar, i)
    end

    if rightButton then
        local holder = new('Frame', {
            BackgroundTransparency = 1,
            AnchorPoint = Vector2.new(1, 0.5),
            Position = UDim2.new(1, -8, 0.5, 0),
            Size = UDim2.new(0, 110, 0, 26),
            Parent = bar,
        })
        local rl = list(holder, Enum.FillDirection.Horizontal, 0, Enum.HorizontalAlignment.Right)

        rl.VerticalAlignment = Enum.VerticalAlignment.Center

        mk(rightButton, holder, 1)
    end

    return bar
end
function Window:CreateTabStrip(tab, cfg)
    cfg = cfg or {}

    local strip = new('Frame', {
        Size = UDim2.new(1, 0, 0, 34),
        BackgroundTransparency = 1,
        LayoutOrder = tab:_next(),
        Parent = tab.page,
    })
    local hl = list(strip, Enum.FillDirection.Horizontal, 2)

    hl.VerticalAlignment = Enum.VerticalAlignment.Center

    local api = {files = {}}

    local function addFile(name, order)
        local w = TextService:GetTextSize(name, 12, Enum.Font.GothamBold, Vector2.new(400, 20)).X + 60
        local f = new('TextButton', {
            Text = '',
            AutoButtonColor = false,
            BorderSizePixel = 0,
            Size = UDim2.new(0, w, 0, 30),
            LayoutOrder = order,
            Parent = strip,
            Theme = {
                BackgroundColor3 = 'Panel',
            },
        })

        corner(f, 8)
        iconLabel({
            Icon = cfg.FileIcon or Ui.Icons.file,
            AnchorPoint = Vector2.new(0, 0.5),
            Position = UDim2.new(0, 10, 0.5, 0),
            Size = UDim2.new(0, 14, 0, 14),
            Parent = f,
            Theme = {
                ImageColor3 = 'SubText',
            },
        })
        new('TextLabel', {
            Text = name,
            Font = Enum.Font.GothamBold,
            TextSize = 12,
            TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 28, 0, 0),
            Size = UDim2.new(1, -56, 1, 0),
            Parent = f,
            Theme = {
                TextColor3 = 'Text',
            },
        })

        local x = iconButton({
            Icon = Ui.Icons.close,
            AnchorPoint = Vector2.new(1, 0.5),
            Position = UDim2.new(1, -8, 0.5, 0),
            Size = UDim2.new(0, 14, 0, 14),
            Parent = f,
            Theme = {
                ImageColor3 = 'SubText',
            },
        })

        x.MouseButton1Click:Connect(function()
            f:Destroy()
        end)

        return f
    end

    for i, name in ipairs(cfg.Files or {
        'Welcome',
    })do
        api.files[i] = addFile(name, i + 1)
    end

    local plus = iconButton({
        Icon = Ui.Icons.plus,
        Size = UDim2.new(0, 30, 0, 30),
        LayoutOrder = 999,
        Parent = strip,
        Theme = {
            ImageColor3 = 'SubText',
            BackgroundColor3 = 'Hover',
        },
    })

    do
        local ip = new('UIPadding', {Parent = plus})

        ip.PaddingTop, ip.PaddingBottom = UDim.new(0, 7), UDim.new(0, 7)
        ip.PaddingLeft, ip.PaddingRight = UDim.new(0, 7), UDim.new(0, 7)
    end

    corner(plus, 8)
    plus.MouseEnter:Connect(function()
        plus.BackgroundTransparency = 0
    end)
    plus.MouseLeave:Connect(function()
        plus.BackgroundTransparency = 1
    end)
    plus.MouseButton1Click:Connect(function()
        local n = #api.files + 1

        api.files[n] = addFile(cfg.NewName and (cfg.NewName .. ' ' .. n) or ('Script ' .. n), n + 1)

        if cfg.OnNew then
            task.spawn(cfg.OnNew, n)
        end
    end)

    api.AddFile = function(_, name)
        local n = #api.files + 1

        api.files[n] = addFile(name, n + 1)
    end

    return api
end
function Window:CreateWelcome(tab, cfg)
    cfg = cfg or {}

    local wrap = new('Frame', {
        Size = UDim2.new(1, 0, 0, 230),
        BackgroundTransparency = 1,
        LayoutOrder = tab:_next(),
        Parent = tab.page,
    })
    local left = new('Frame', {
        Size = UDim2.new(0.42, 0, 1, 0),
        BackgroundTransparency = 1,
        Parent = wrap,
    })

    new('TextLabel', {
        Text = cfg.Title or 'Zeox Ui',
        Font = Enum.Font.GothamBold,
        TextSize = 24,
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        Size = UDim2.new(1, 0, 0, 30),
        Parent = left,
        Theme = {
            TextColor3 = 'Text',
        },
    })
    new('TextLabel', {
        Text = cfg.Subtitle or 'Script interfaces, designed fast',
        Font = Enum.Font.Gotham,
        TextSize = 12,
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 0, 0, 32),
        Size = UDim2.new(1, 0, 0, 16),
        Parent = left,
        Theme = {
            TextColor3 = 'SubText',
        },
    })

    local function column(parent, heading, items, yPos, emptyText)
        new('TextLabel', {
            Text = string.upper(heading),
            Font = Enum.Font.GothamBold,
            TextSize = 11,
            TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 0, 0, yPos),
            Size = UDim2.new(1, 0, 0, 16),
            Parent = parent,
            Theme = {
                TextColor3 = 'SubText',
            },
        })

        local holder = new('Frame', {
            Position = UDim2.new(0, 0, 0, yPos + 22),
            Size = UDim2.new(1, 0, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            BackgroundTransparency = 1,
            Parent = parent,
        })
        local l = list(holder, Enum.FillDirection.Vertical, 4)

        l.VerticalAlignment = Enum.VerticalAlignment.Top

        if #items == 0 then
            new('TextLabel', {
                Text = emptyText or 'Nothing yet',
                Font = Enum.Font.Gotham,
                TextSize = 12,
                TextXAlignment = Enum.TextXAlignment.Left,
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 0, 22),
                Parent = holder,
                Theme = {
                    TextColor3 = 'Dim',
                },
            })
        end

        for i, it in ipairs(items)do
            local b = new('TextButton', {
                Text = '',
                AutoButtonColor = false,
                BackgroundTransparency = 1,
                BorderSizePixel = 0,
                Size = UDim2.new(1, 0, 0, 26),
                LayoutOrder = i,
                Parent = holder,
                Theme = {
                    BackgroundColor3 = 'Hover',
                },
            })

            corner(b, 6)
            iconLabel({
                Icon = it.Icon or Ui.Icons.plus,
                AnchorPoint = Vector2.new(0, 0.5),
                Position = UDim2.new(0, 2, 0.5, 0),
                Size = UDim2.new(0, 15, 0, 15),
                Parent = b,
                Theme = {
                    ImageColor3 = 'SubText',
                },
            })
            new('TextLabel', {
                Text = it.Name,
                Font = Enum.Font.Gotham,
                TextSize = 12,
                TextXAlignment = Enum.TextXAlignment.Left,
                BackgroundTransparency = 1,
                Position = UDim2.new(0, 24, 0, 0),
                Size = UDim2.new(1, -24, 1, 0),
                Parent = b,
                Theme = {
                    TextColor3 = 'Text',
                },
            })
            b.MouseEnter:Connect(function()
                b.BackgroundTransparency = 0
            end)
            b.MouseLeave:Connect(function()
                b.BackgroundTransparency = 1
            end)
            b.MouseButton1Click:Connect(function()
                if it.Callback then
                    task.spawn(it.Callback)
                end
            end)
        end
    end

    column(left, 'Start', cfg.Start or {}, 70)
    column(left, 'Recent', cfg.Recent or {}, 160, cfg.RecentEmpty or 'No scripts run yet')
    new('Frame', {
        Position = UDim2.new(0.46, 0, 0, 10),
        Size = UDim2.new(0, 1, 1, -30),
        BorderSizePixel = 0,
        Parent = wrap,
        Theme = {
            BackgroundColor3 = 'Stroke',
        },
    })

    local right = new('Frame', {
        Position = UDim2.new(0.52, 0, 0, 0),
        Size = UDim2.new(0.48, 0, 1, 0),
        BackgroundTransparency = 1,
        Parent = wrap,
    })

    new('TextLabel', {
        Text = 'GET STARTED',
        Font = Enum.Font.GothamBold,
        TextSize = 11,
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        Size = UDim2.new(1, 0, 0, 16),
        Parent = right,
        Theme = {
            TextColor3 = 'SubText',
        },
    })

    local cards = new('Frame', {
        Position = UDim2.new(0, 0, 0, 24),
        Size = UDim2.new(1, 0, 1, -24),
        BackgroundTransparency = 1,
        Parent = right,
    })
    local cl = list(cards, Enum.FillDirection.Vertical, 8)

    cl.VerticalAlignment = Enum.VerticalAlignment.Top

    for i, c in ipairs(cfg.Cards or {})do
        local b = new('TextButton', {
            Text = '',
            AutoButtonColor = false,
            BorderSizePixel = 0,
            Size = UDim2.new(1, 0, 0, 42),
            LayoutOrder = i,
            Parent = cards,
            Theme = {
                BackgroundColor3 = 'Panel',
            },
        })

        corner(b, 8)
        stroke(b)
        hoverable(b, 'Panel', 'Hover')
        iconLabel({
            Icon = c.Icon or Ui.Icons.box,
            AnchorPoint = Vector2.new(0, 0.5),
            Position = UDim2.new(0, 14, 0.5, 0),
            Size = UDim2.new(0, 18, 0, 18),
            Parent = b,
            Theme = {
                ImageColor3 = 'SubText',
            },
        })
        new('TextLabel', {
            Text = c.Name,
            Font = Enum.Font.GothamBold,
            TextSize = 12,
            TextXAlignment = Enum.TextXAlignment.Left,
            BackgroundTransparency = 1,
            Position = UDim2.new(0, 44, 0, 0),
            Size = UDim2.new(1, -54, 1, 0),
            Parent = b,
            Theme = {
                TextColor3 = 'Text',
            },
        })
        b.MouseButton1Click:Connect(function()
            if c.Callback then
                task.spawn(c.Callback)
            end
        end)
    end

    return wrap
end
function Window:Notify(cfg)
    cfg = cfg or {}

    local n = new('Frame', {
        AnchorPoint = Vector2.new(1, 1),
        Position = UDim2.new(1, -16, 1, 60),
        Size = UDim2.new(0, 260, 0, 62),
        BorderSizePixel = 0,
        Parent = self.root,
        Theme = {
            BackgroundColor3 = 'Elevated',
        },
    })

    corner(n, 10)
    stroke(n)
    new('TextLabel', {
        Text = cfg.Title or 'Notification',
        Font = Enum.Font.GothamBold,
        TextSize = 13,
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 14, 0, 12),
        Size = UDim2.new(1, -28, 0, 16),
        Parent = n,
        Theme = {
            TextColor3 = 'Text',
        },
    })
    new('TextLabel', {
        Text = cfg.Content or '',
        Font = Enum.Font.Gotham,
        TextSize = 12,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextWrapped = true,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 14, 0, 30),
        Size = UDim2.new(1, -28, 0, 24),
        Parent = n,
        Theme = {
            TextColor3 = 'SubText',
        },
    })
    tween(n, 0.3, {
        Position = UDim2.new(1, -16, 1, -16),
    })
    task.delay(cfg.Duration or 3, function()
        tween(n, 0.25, {
            Position = UDim2.new(1, -16, 1, 70),
        })
        task.delay(0.3, function()
            n:Destroy()
        end)
    end)

    return n
end

return Ui
