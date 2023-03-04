local plrs = game:GetService("Players")
local sui = game:GetService("StarterGui")
local tws = game:GetService("TweenService")
local gps = game:GetService("GroupService")
local uis = game:GetService('UserInputService')

local LPlr = plrs.LocalPlayer

if game.CoreGui:FindFirstChild("macro") then
	game.CoreGui:FindFirstChild("macro"):Destroy()
end

local mouse = LPlr:GetMouse()

local gameIs = nil

-- HM MAIN, VC, BANLAND, RANKED
-- DH MAIN, VC

if game.PlaceId == 5602055394 or game.PlaceId == 7951883376 or game.PlaceId == 9610943121 or game.PlaceId == 9293553078 then
	gameIs = "HM"
elseif game.PlaceId == 2788229376 or game.PlaceId == 7213786345 then
	gameIs = "DH"
else
	gameIs = nil
end

local PLAYA = plrs.LocalPlayer

local macro = Instance.new("ScreenGui")
macro.Name = "macro"
macro.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
macro.Parent = game.CoreGui

-- MAIN CREATE

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.new(0, 265, 0, 350)
Main.Position = UDim2.new(0.8, 0, 0.3, 0)
Main.BorderSizePixel = 0
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.Parent = macro

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(0.8679245, 0, 0.0355492, 0)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0.064, 0, 0.017, 0)
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.FontSize = Enum.FontSize.Size14
Title.TextSize = 14
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Text = "K TO HIDE, J TO TOGGLE ESP"
Title.TextWrapped = true
Title.Font = Enum.Font.GothamMedium
Title.TextWrap = true
Title.TextScaled = true
Title.Parent = Main

local Scroll = Instance.new("ScrollingFrame")
Scroll.Name = "Scroll"
Scroll.AnchorPoint = Vector2.new(0.5, 0.5)
Scroll.Size = UDim2.new(0, 240, 0, 245)
Scroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
Scroll.BackgroundTransparency = 1
Scroll.Position = UDim2.new(0.5, 0, 0.6204286, 0)
Scroll.Active = true
Scroll.BorderSizePixel = 0
Scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
Scroll.CanvasSize = UDim2.new(0, 0, 1, 0)
Scroll.ScrollBarImageColor3 = Color3.fromRGB(97, 101, 104)
Scroll.VerticalScrollBarInset = Enum.ScrollBarInset.Always
Scroll.Parent = Main

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)
UIListLayout.Parent = Scroll

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingRight = UDim.new(0, 2)
UIPadding.Parent = Scroll

local UICorner3 = Instance.new("UICorner")
UICorner3.Parent = Main

local All = Instance.new("TextButton")
All.Name = "All"
All.Size = UDim2.new(0.4227833, 0, 0.006, 25)
All.BorderColor3 = Color3.fromRGB(255, 255, 255)
All.BackgroundTransparency = 0.9
All.Position = UDim2.new(0.52, 0, 0.067, 0)
All.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
All.FontSize = Enum.FontSize.Size18
All.TextSize = 16
All.TextColor3 = Color3.fromRGB(255, 255, 255)
All.Text = "ESP ALL"
All.Font = Enum.Font.GothamMedium
All.Parent = Main

local UIStroke = Instance.new("UIStroke")
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Transparency = 0.8
UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Parent = All

local UICorner4 = Instance.new("UICorner")
UICorner4.Parent = All

local Search = Instance.new("TextBox")
Search.Name = "Search"
Search.Size = UDim2.new(0.883037, 0, -0.0000235, 30)
Search.BorderColor3 = Color3.fromRGB(255, 255, 255)
Search.BackgroundTransparency = 0.95
Search.Position = UDim2.new(0, 15, -0.004, 59)
Search.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
Search.FontSize = Enum.FontSize.Size18
Search.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
Search.TextSize = 16
Search.TextColor3 = Color3.fromRGB(255, 255, 255)
Search.Text = ""
Search.PlaceholderText = "SEARCH"
Search.CursorPosition = -1
Search.Font = Enum.Font.GothamMedium
Search.Parent = Main

local UICorner5 = Instance.new("UICorner")
UICorner5.Parent = Search

local UIStroke1 = Instance.new("UIStroke")
UIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke1.Transparency = 0.8
UIStroke1.Color = Color3.fromRGB(255, 255, 255)
UIStroke1.Parent = Search

local LocalScript = Instance.new("LocalScript")
LocalScript.Parent = Search

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Visible = false
ImageLabel.Size = UDim2.new(0, 21, 0, 20)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.0603774, 0, 0.0971429, 0)
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.ImageColor3 = Color3.fromRGB(178, 178, 178)
ImageLabel.Image = "http://www.roblox.com/asset/?id=2804603863"
ImageLabel.Parent = Main

local Opts = Instance.new("TextButton")
Opts.Name = "Opts"
Opts.Size = UDim2.new(0.4227833, 0, 0.006, 25)
Opts.BorderColor3 = Color3.fromRGB(255, 255, 255)
Opts.BackgroundTransparency = 0.9
Opts.Position = UDim2.new(0.06, 0, 0.067, 0)
Opts.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
Opts.FontSize = Enum.FontSize.Size18
Opts.TextSize = 16
Opts.TextColor3 = Color3.fromRGB(255, 255, 255)
Opts.Text = "OPTIONS"
Opts.Font = Enum.Font.GothamMedium
Opts.Parent = Main

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Transparency = 0.8
UIStroke2.Color = Color3.fromRGB(255, 255, 255)
UIStroke2.Parent = Opts

local UICorner6 = Instance.new("UICorner")
UICorner6.Parent = Opts

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = 45
UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 27, 29)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(34, 36, 38)), ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 27, 29))})
UIGradient.Parent = Main

-- OPTIONS CREATE

local Clip = Instance.new("Frame")
Clip.Name = "Clip"
Clip.Size = UDim2.new(0.6490566, 0, 1, 0)
Clip.ClipsDescendants = true
Clip.BackgroundTransparency = 1
Clip.Position = UDim2.new(-0.66, 0, 0, 0)
Clip.BorderSizePixel = 0
Clip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Clip.Parent = Main

local Options = Instance.new("Frame")
Options.Name = "Options"
Options.Size = UDim2.new(1, 0, 1, 0)
Options.ClipsDescendants = true
Options.Position = UDim2.new(1, 0, 0, 0)
Options.BorderSizePixel = 0
Options.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Options.Parent = Clip

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = 45
UIGradient.Color = ColorSequence.new(Color3.fromRGB(87, 29, 112), Color3.fromRGB(48, 74, 124))
UIGradient.Parent = Options

local Scroll = Instance.new("ScrollingFrame")
Scroll.Name = "Scroll"
Scroll.AnchorPoint = Vector2.new(0.5, 0.5)
Scroll.Size = UDim2.new(0, 157, 0, 190)
Scroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
Scroll.BackgroundTransparency = 0.95
Scroll.Position = UDim2.new(0.495, 0, 0.71, 2)
Scroll.Active = true
Scroll.BorderSizePixel = 0
Scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
Scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
Scroll.VerticalScrollBarInset = Enum.ScrollBarInset.Always
Scroll.Parent = Options

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 1)
UIListLayout.Parent = Scroll

local UIPadding = Instance.new("UIPadding")
UIPadding.Parent = Scroll

local ToggleLog = Instance.new("Frame")
ToggleLog.Name = "ToggleLog"
ToggleLog.AnchorPoint = Vector2.new(0.5, 0)
ToggleLog.Size = UDim2.new(0.4310443, 0, 0.0829304, 0)
ToggleLog.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleLog.BackgroundTransparency = 0.9
ToggleLog.Position = UDim2.new(0.5, 0, 0.0933961, 0)
ToggleLog.BorderSizePixel = 0
ToggleLog.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleLog.Parent = Options

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = ToggleLog

local Btn = Instance.new("TextButton")
Btn.Name = "Btn"
Btn.Size = UDim2.new(1, 0, 1, 0)
Btn.BackgroundTransparency = 1
Btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Btn.FontSize = Enum.FontSize.Size14
Btn.TextSize = 14
Btn.TextColor3 = Color3.fromRGB(0, 0, 0)
Btn.Text = ""
Btn.Font = Enum.Font.SourceSans
Btn.Parent = ToggleLog

local Colour = Instance.new("Frame")
Colour.Name = "Colour"
Colour.Size = UDim2.new(0.4, 0, 0.8, 0)
Colour.BorderColor3 = Color3.fromRGB(0, 0, 0)
Colour.BackgroundTransparency = 0.2
Colour.Position = UDim2.new(0.0499998, 0, 0.1000001, 0)
Colour.BorderSizePixel = 0
Colour.BackgroundColor3 = Color3.fromRGB(47, 255, 0)
Colour.Parent = ToggleLog

local UICorner1 = Instance.new("UICorner")
UICorner1.CornerRadius = UDim.new(1, 0)
UICorner1.Parent = Colour

local UIStroke = Instance.new("UIStroke")
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Transparency = 0.8
UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Parent = ToggleLog

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.AnchorPoint = Vector2.new(0.5, 0)
Title.Size = UDim2.new(0.9283019, 0, 0.0467965, 0)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0.5, 0, 0.0262857, 0)
Title.BorderSizePixel = 0
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.FontSize = Enum.FontSize.Size14
Title.TextSize = 14
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Text = "JOIN/LEAVE LOG"
Title.TextWrapped = true
Title.Font = Enum.Font.GothamMedium
Title.TextWrap = true
Title.TextScaled = true
Title.Parent = Options

local Rejoin = Instance.new("TextButton")
Rejoin.Name = "Rejoin"
Rejoin.Size = UDim2.new(0.4696608, 0, 0.074017, 0)
Rejoin.BorderColor3 = Color3.fromRGB(255, 255, 255)
Rejoin.BackgroundTransparency = 0.9
Rejoin.Position = UDim2.new(0.262, 0, 0.2, 0)
Rejoin.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
Rejoin.FontSize = Enum.FontSize.Size18
Rejoin.TextSize = 16
Rejoin.TextColor3 = Color3.fromRGB(255, 255, 255)
Rejoin.Text = "REJOIN"
Rejoin.Font = Enum.Font.GothamMedium
Rejoin.Parent = Options

local UICorner2 = Instance.new("UICorner")
UICorner2.Parent = Rejoin

local UIStroke1 = Instance.new("UIStroke")
UIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke1.Transparency = 0.8
UIStroke1.Color = Color3.fromRGB(255, 255, 255)
UIStroke1.Parent = Rejoin

local UICorner3 = Instance.new("UICorner")
UICorner3.Parent = Options

local Title1 = Instance.new("TextLabel")
Title1.Name = "Title"
Title1.AnchorPoint = Vector2.new(0.5, 0)
Title1.Size = UDim2.new(0.9127908, 0, 0.0382251, 0)
Title1.BackgroundTransparency = 1
Title1.Position = UDim2.new(0.495, 0, 0.395, 0)
Title1.BorderSizePixel = 0
Title1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title1.FontSize = Enum.FontSize.Size14
Title1.TextSize = 14
Title1.TextColor3 = Color3.fromRGB(255, 255, 255)
Title1.Text = "HISTORY"
Title1.TextWrapped = true
Title1.Font = Enum.Font.GothamMedium
Title1.TextWrap = true
Title1.TextScaled = true
Title1.Parent = Options

local Full = Instance.new("TextButton")
Full.Name = "Crew"
Full.Size = UDim2.new(0.6498933, 0, 0.074017, 0)
Full.BorderColor3 = Color3.fromRGB(255, 255, 255)
Full.BackgroundTransparency = 0.9
Full.Position = UDim2.new(0.169, 0, 0.3, 0)
Full.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
Full.FontSize = Enum.FontSize.Size18
Full.TextSize = 16
Full.TextColor3 = Color3.fromRGB(255, 255, 255)
Full.Text = "FULLBRIGHT"
Full.Font = Enum.Font.GothamMedium
Full.Parent = Options

local UICorner4 = Instance.new("UICorner")
UICorner4.Parent = Full

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Transparency = 0.8
UIStroke2.Color = Color3.fromRGB(255, 255, 255)
UIStroke2.Parent = Full

-- TARGET CREATE

local Target = Instance.new("Frame")
Target.Name = "Target"
Target.Visible = false
Target.Size = UDim2.new(0, 187, 0, 153)
Target.BorderColor3 = Color3.fromRGB(53, 53, 53)
Target.Position = UDim2.new(0.6749815, 190, 0.0263158, 14)
Target.BorderSizePixel = 0
Target.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Target.Parent = macro

local Scroll = Instance.new("ScrollingFrame")
Scroll.Name = "Scroll"
Scroll.AnchorPoint = Vector2.new(0.5, 0.5)
Scroll.Visible = false
Scroll.Size = UDim2.new(0, 157, 0, 137)
Scroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
Scroll.BackgroundTransparency = 0.6
Scroll.Position = UDim2.new(0.4992481, 0, 1.4629364, 0)
Scroll.Active = true
Scroll.BorderSizePixel = 2
Scroll.BackgroundColor3 = Color3.fromRGB(26, 28, 30)
Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
Scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
Scroll.VerticalScrollBarInset = Enum.ScrollBarInset.Always
Scroll.Parent = Target

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 1)
UIListLayout.Parent = Scroll

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingTop = UDim.new(0, 1)
UIPadding.Parent = Scroll

local ImgCrew = Instance.new("ImageLabel")
ImgCrew.Name = "ImgCrew"
ImgCrew.Size = UDim2.new(0, 25, 0, 25)
ImgCrew.BorderColor3 = Color3.fromRGB(255, 255, 255)
ImgCrew.BackgroundTransparency = 0.9
ImgCrew.Position = UDim2.new(0.4998263, 0, 0.02, 0)
ImgCrew.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
ImgCrew.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImgCrew.Parent = Target

local ImgPlr = Instance.new("ImageLabel")
ImgPlr.Name = "ImgPlr"
ImgPlr.Size = UDim2.new(0, 25, 0, 25)
ImgPlr.BorderColor3 = Color3.fromRGB(255, 255, 255)
ImgPlr.BackgroundTransparency = 0.9
ImgPlr.Position = UDim2.new(0.3612537, 0, 0.02, 0)
ImgPlr.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
ImgPlr.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
ImgPlr.Parent = Target

local Crew = Instance.new("TextLabel")
Crew.Name = "Crew"
Crew.AnchorPoint = Vector2.new(0.5, 0)
Crew.Size = UDim2.new(0.3119228, 0, 0.0791979, 0)
Crew.BackgroundTransparency = 1
Crew.Position = UDim2.new(0.8251813, 0, 0.02, 0)
Crew.BorderSizePixel = 0
Crew.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Crew.FontSize = Enum.FontSize.Size14
Crew.TextSize = 14
Crew.TextColor3 = Color3.fromRGB(255, 255, 255)
Crew.Text = "Crew Name"
Crew.TextWrapped = true
Crew.Font = Enum.Font.GothamMedium
Crew.TextWrap = true
Crew.TextXAlignment = Enum.TextXAlignment.Left
Crew.TextScaled = true
Crew.Parent = Target

local CrewID = Instance.new("TextLabel")
CrewID.Name = "CrewID"
CrewID.AnchorPoint = Vector2.new(0.5, 0)
CrewID.Size = UDim2.new(0.3119228, 0, 0.0731255, 0)
CrewID.BackgroundTransparency = 1
CrewID.Position = UDim2.new(0.8251813, 0, 0.0962939, 0)
CrewID.BorderSizePixel = 0
CrewID.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CrewID.FontSize = Enum.FontSize.Size14
CrewID.TextTransparency = 0.3
CrewID.TextSize = 14
CrewID.TextColor3 = Color3.fromRGB(255, 255, 255)
CrewID.Text = "Crew ID"
CrewID.TextWrapped = true
CrewID.Font = Enum.Font.GothamMedium
CrewID.TextWrap = true
CrewID.TextXAlignment = Enum.TextXAlignment.Left
CrewID.TextScaled = true
CrewID.Parent = Target

local View = Instance.new("TextButton")
View.Name = "View"
View.Size = UDim2.new(0.3591957, 0, 0.154017, 0)
View.BorderColor3 = Color3.fromRGB(255, 255, 255)
View.BackgroundTransparency = 0.9
View.Position = UDim2.new(0.512, 0, 0.55, 0)
View.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
View.FontSize = Enum.FontSize.Size18
View.TextSize = 16
View.TextColor3 = Color3.fromRGB(255, 255, 255)
View.Text = "VIEW"
View.Font = Enum.Font.GothamMedium
View.Parent = Target

local UIStroke = Instance.new("UIStroke")
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Transparency = 0.8
UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Parent = View

local UICorner = Instance.new("UICorner")
UICorner.Parent = View

local Track = Instance.new("TextButton")
Track.Name = "Track"
Track.Size = UDim2.new(0.359, 0, 0.154, 0)
Track.BorderColor3 = Color3.fromRGB(255, 255, 255)
Track.BackgroundTransparency = 0.9
Track.Position = UDim2.new(0.122, 0, 0.55, 0)
Track.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
Track.FontSize = Enum.FontSize.Size18
Track.TextSize = 16
Track.TextColor3 = Color3.fromRGB(255, 255, 255)
Track.Text = "ESP"
Track.Font = Enum.Font.GothamMedium
Track.Parent = Target

local UIStroke1 = Instance.new("UIStroke")
UIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke1.Transparency = 0.8
UIStroke1.Color = Color3.fromRGB(255, 255, 255)
UIStroke1.Parent = Track

local UICorner1 = Instance.new("UICorner")
UICorner1.Parent = Track

local User = Instance.new("TextLabel")
User.Name = "User"
User.Size = UDim2.new(0.8, 0, 0.11, 0)
User.BackgroundTransparency = 1
User.Position = UDim2.new(0.0956408, 0, 0.3079781, 0)
User.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
User.FontSize = Enum.FontSize.Size14
User.TextTransparency = 0.3
User.TextSize = 14
User.TextColor3 = Color3.fromRGB(255, 255, 255)
User.Text = "Username"
User.TextWrapped = true
User.Font = Enum.Font.GothamMedium
User.TextWrap = true
User.TextScaled = true
User.Parent = Target

local Disp = Instance.new("TextLabel")
Disp.Name = "Disp"
Disp.AnchorPoint = Vector2.new(0.5, 0)
Disp.Size = UDim2.new(0.8, 0, 0.1095484, 0)
Disp.BackgroundTransparency = 1
Disp.Position = UDim2.new(0.5, 0, 0.2003961, 0)
Disp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Disp.FontSize = Enum.FontSize.Size14
Disp.TextSize = 14
Disp.TextColor3 = Color3.fromRGB(255, 255, 255)
Disp.Text = "Display"
Disp.TextWrapped = true
Disp.Font = Enum.Font.GothamMedium
Disp.TextWrap = true
Disp.TextScaled = true
Disp.Parent = Target

local Health = Instance.new("TextLabel")
Health.Name = "Health"
Health.Size = UDim2.new(0.788295, -58, 0.098986, 0)
Health.BackgroundTransparency = 1
Health.Position = UDim2.new(-0.2856141, 54, 0.4197008, 0)
Health.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Health.FontSize = Enum.FontSize.Size14
Health.TextSize = 14
Health.TextColor3 = Color3.fromRGB(52, 245, 4)
Health.Text = "100"
Health.TextWrapped = true
Health.Font = Enum.Font.GothamBold
Health.TextWrap = true
Health.TextXAlignment = Enum.TextXAlignment.Right
Health.TextScaled = true
Health.Parent = Target

local Armour = Instance.new("TextLabel")
Armour.Name = "Armour"
Armour.Size = UDim2.new(0.788, -58, 0.099, 0)
Armour.BackgroundTransparency = 1
Armour.Position = UDim2.new(0.215, 54, 0.42, 0)
Armour.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Armour.FontSize = Enum.FontSize.Size14
Armour.TextSize = 14
Armour.TextColor3 = Color3.fromRGB(0, 183, 255)
Armour.Text = "100"
Armour.TextWrapped = true
Armour.Font = Enum.Font.GothamBold
Armour.TextWrap = true
Armour.TextXAlignment = Enum.TextXAlignment.Left
Armour.TextScaled = true
Armour.Parent = Target

local Inv = Instance.new("TextButton")
Inv.Name = "Inv"
Inv.Size = UDim2.new(0.7491961, 0, 0.154017, 0)
Inv.BorderColor3 = Color3.fromRGB(255, 255, 255)
Inv.BackgroundTransparency = 0.9
Inv.Position = UDim2.new(0.1219999, 0, 0.7400001, 0)
Inv.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
Inv.FontSize = Enum.FontSize.Size18
Inv.TextSize = 16
Inv.TextColor3 = Color3.fromRGB(255, 255, 255)
Inv.Text = "INVENTORY"
Inv.Font = Enum.Font.GothamMedium
Inv.Parent = Target

local UIStroke2 = Instance.new("UIStroke")
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Transparency = 0.8
UIStroke2.Color = Color3.fromRGB(255, 255, 255)
UIStroke2.Parent = Inv

local UICorner2 = Instance.new("UICorner")
UICorner2.Parent = Inv

local StompFX = Instance.new("TextLabel")
StompFX.Name = "StompFX"
StompFX.AnchorPoint = Vector2.new(0.5, 0)
StompFX.Size = UDim2.new(0.9, 0, 0.073, 0)
StompFX.BackgroundTransparency = 1
StompFX.Position = UDim2.new(0.508, 0, 0.91, 0)
StompFX.BorderSizePixel = 0
StompFX.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StompFX.FontSize = Enum.FontSize.Size14
StompFX.TextTransparency = 0.3
StompFX.TextSize = 14
StompFX.TextColor3 = Color3.fromRGB(255, 255, 255)
StompFX.Text = "Stomp Effect"
StompFX.TextWrapped = true
StompFX.Font = Enum.Font.GothamMedium
StompFX.TextWrap = true
StompFX.TextScaled = true
StompFX.Parent = Target

local UIGradient = Instance.new("UIGradient")
UIGradient.Rotation = 45
UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 27, 29)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(34, 36, 38)), ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 27, 29))})
UIGradient.Parent = Target

local UICorner3 = Instance.new("UICorner")
UICorner3.Parent = Target

local HM = Instance.new("TextButton")
HM.Name = "HM"
HM.Size = UDim2.new(0.2913948, 0, 0.154017, 0)
HM.BorderColor3 = Color3.fromRGB(255, 255, 255)
HM.BackgroundTransparency = 0.9
HM.Position = UDim2.new(0.3510871, 0, -0.1779679, 0)
HM.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
HM.FontSize = Enum.FontSize.Size18
HM.TextSize = 16
HM.TextColor3 = Color3.fromRGB(255, 255, 255)
HM.Text = "HM"
HM.Font = Enum.Font.GothamMedium
HM.Parent = Target

if gameIs ~= "HM" then
	HM.Visible = false
end

local UIStroke3 = Instance.new("UIStroke")
UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke3.Transparency = 0.8
UIStroke3.Color = Color3.fromRGB(255, 255, 255)
UIStroke3.Parent = HM

local UICorner4 = Instance.new("UICorner")
UICorner4.Parent = HM

local Close = Instance.new("TextButton")
Close.Name = "Close"
Close.Size = UDim2.new(0, 20, 0, 20)
Close.BorderColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 0.9
Close.Position = UDim2.new(0.0498484, 0, 0.0526798, 0)
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
Close.FontSize = Enum.FontSize.Size18
Close.TextSize = 16
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.Text = "X"
Close.Font = Enum.Font.GothamMedium
Close.Parent = Target

local UIStroke4 = Instance.new("UIStroke")
UIStroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke4.Transparency = 0.8
UIStroke4.Color = Color3.fromRGB(255, 0, 4)
UIStroke4.Parent = Close

local UICorner5 = Instance.new("UICorner")
UICorner5.CornerRadius = UDim.new(0, 4)
UICorner5.Parent = Close

local Refresh = Instance.new("TextButton")
Refresh.Name = "Refresh"
Refresh.Size = UDim2.new(0, 20, 0, 20)
Refresh.BorderColor3 = Color3.fromRGB(255, 255, 255)
Refresh.BackgroundTransparency = 0.9
Refresh.Position = UDim2.new(0.05, 22, 0.053, 0)
Refresh.BackgroundColor3 = Color3.fromRGB(58, 133, 191)
Refresh.FontSize = Enum.FontSize.Size18
Refresh.TextSize = 16
Refresh.TextColor3 = Color3.fromRGB(255, 255, 255)
Refresh.Text = "🔃"
Refresh.Font = Enum.Font.GothamMedium
Refresh.Parent = Target

local UIStroke5 = Instance.new("UIStroke")
UIStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke5.Transparency = 0.8
UIStroke5.Color = Color3.fromRGB(58, 133, 191)
UIStroke5.Parent = Refresh

local UICorner6 = Instance.new("UICorner")
UICorner6.CornerRadius = UDim.new(0, 4)
UICorner6.Parent = Refresh

--

local tFolder = Instance.new("Folder")
tFolder.Name = "Tracking"
tFolder.Parent = macro

_G.tracking = {}
table.clear(_G.tracking)
--local connections = {}

local visible = true
local plrNoti = true
local chatLog = false
local trackNewPlayers = false

local health
local armour
local died

--

function formatInt(number)
	local i, j, minus, int, fraction = tostring(number):find('([-]?)(%d+)([.]?%d*)')
	int = int:reverse():gsub("(%d%d%d)", "%1,")
	return minus .. int:reverse():gsub("^,", "") .. fraction
end

function trackChar(char)
	if tFolder:FindFirstChild(char.Name) then
		tFolder:FindFirstChild(char.Name).Adornee = char
		tFolder:FindFirstChild(char.Name).Tag.Adornee = char:WaitForChild("Head")
	else
		local plr = plrs[char.Name]
		local h = Instance.new("Highlight")
		h.FillTransparency = 1
		h.OutlineColor = Color3.fromRGB(0, 255, 255)
		task.spawn(function()
			if gameIs == "HM" then
				if plr.Information.Crew.Value == LPlr.Information.Crew.Value then
					h.OutlineColor = Color3.fromRGB(0, 255, 0)
				else
					h.OutlineColor = Color3.fromRGB(0, 255, 255)
				end
			elseif gameIs == "DH" then
				if plr.DataFolder.Information.Crew.Value == LPlr.DataFolder.Information.Crew.Value then
					h.OutlineColor = Color3.fromRGB(0, 255, 0)
				else
					h.OutlineColor = Color3.fromRGB(0, 255, 255)
				end
			end
		end)
		h.OutlineTransparency = 0.2
		h.Name = char.Name
		h.Parent = tFolder
		h.Adornee = char
		local tag = Instance.new("BillboardGui")
		tag.Name = "Tag"
		tag.Parent = h
		tag.Adornee = char:WaitForChild("Head")
		tag.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		tag.Active = true
		tag.AlwaysOnTop = true
		tag.Size = UDim2.new(0, 200, 0, 25)
		tag.StudsOffset = Vector3.new(0, 3, 0)
		local txt = Instance.new("TextLabel")
		txt.Name = "Txt"
		txt.Parent = tag
		txt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		txt.BackgroundTransparency = 1.000
		txt.Size = UDim2.new(1, 0, 1, 0)
		txt.Font = Enum.Font.GothamMedium
		txt.Text = plr.DisplayName
		txt.TextColor3 = Color3.fromRGB(255, 255, 255)
		txt.TextSize = 13.000
		txt.TextStrokeTransparency = 0.500
		txt.RichText = true
		if visible == false then
			h.Enabled = false
			tag.Enabled = false
		end
	end
end

function trackRemove(plr)
	local tF = tFolder:FindFirstChild(plr.Name)
	if tF then
		tF:Destroy()
	end
	if Target.User.Text == plr.Name then
		Target.Track.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
	end
	local scrolly = Main.Scroll:FindFirstChild(plr.Name)
	if scrolly then
		scrolly.Disp.TextColor3 = Color3.fromRGB(255, 255, 255)
	end
	local scrolly2 = Options.Scroll:FindFirstChild(plr.Name)
	if scrolly2 then
		scrolly2:Destroy()
	end
	local found = table.find(_G.tracking, plr.Name)
	if found then
		table.remove(_G.tracking, found)
	end
end

function trackList(plr)
	if Options.Scroll:FindFirstChild(plr.Name) then
		Options.Scroll:FindFirstChild(plr.Name):Destroy()
	end
	local Item = Instance.new("TextButton")
	Item.Name = plr.Name
	Item.LayoutOrder = 1
	Item.Size = UDim2.new(1, 0, 0, 30)
	Item.BorderColor3 = Color3.fromRGB(255, 255, 255)
	Item.BackgroundTransparency = 0.9
	Item.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
	Item.FontSize = Enum.FontSize.Size24
	Item.TextSize = 20
	Item.TextColor3 = Color3.fromRGB(255, 255, 255)
	Item.Text = ""
	Item.Font = Enum.Font.Gotham
	Item.Parent = Options.Scroll
	local Img = Instance.new("ImageLabel")
	Img.Name = "Img"
	Img.Size = UDim2.new(0, 30, 0, 30)
	Img.BorderColor3 = Color3.fromRGB(255, 255, 255)
	Img.BackgroundTransparency = 0.9
	Img.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
	Img.Image = "rbxthumb://type=AvatarHeadShot&id="..plr.UserId.."&w=100&h=100"
	Img.Parent = Item
	local Txt = Instance.new("TextLabel")
	Txt.Name = "Txt"
	Txt.AnchorPoint = Vector2.new(0, 0.5)
	Txt.Size = UDim2.new(0.727, 0, 0.8, 0)
	Txt.BackgroundTransparency = 1
	Txt.Position = UDim2.new(-0.14, 54, 0.5, 0)
	Txt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Txt.FontSize = Enum.FontSize.Size14
	Txt.TextSize = 14
	Txt.TextColor3 = Color3.fromRGB(255, 255, 255)
	Txt.Text = plr.Name
	Txt.TextWrapped = true
	Txt.Font = Enum.Font.GothamMedium
	Txt.TextWrap = true
	Txt.TextScaled = true
	Txt.Parent = Item

	Item.MouseButton1Click:Connect(function()
		trackRemove(plr)
	end)
end

function createBtn(plr)
	local Plr = Instance.new("TextButton")
	Plr.Name = plr.Name
	Plr.LayoutOrder = 3
	Plr.Size = UDim2.new(1, 0, 0, 50)
	Plr.BorderColor3 = Color3.fromRGB(255, 255, 255)
	Plr.BackgroundTransparency = 0.9
	Plr.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
	Plr.FontSize = Enum.FontSize.Size24
	Plr.TextSize = 20
	Plr.TextTransparency = 1
	Plr.TextColor3 = Color3.fromRGB(255, 255, 255)
	Plr.Text = plr.DisplayName
	Plr.Font = Enum.Font.Gotham

	local Img = Instance.new("ImageButton")
	Img.Name = "Img"
	Img.Size = UDim2.new(0, 50, 0, 50)
	Img.BorderColor3 = Color3.fromRGB(255, 255, 255)
	Img.BackgroundTransparency = 1
	Img.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
	Img.Image = "rbxthumb://type=AvatarHeadShot&id="..plr.UserId.."&w=150&h=150"
	Img.Parent = Plr

	local UICorner = Instance.new("UICorner")
	UICorner.Parent = Img

	local User = Instance.new("TextLabel")
	User.Name = "User"
	User.Size = UDim2.new(0.9561403, -58, 0.405, 0)
	User.BackgroundTransparency = 1
	User.Position = UDim2.new(0.0175439, 54, 0.495, 0)
	User.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	User.FontSize = Enum.FontSize.Size14
	User.TextSize = 14
	User.TextColor3 = Color3.fromRGB(185, 190, 190)
	User.Text = plr.Name
	User.TextWrapped = true
	User.Font = Enum.Font.GothamMedium
	User.TextWrap = true
	User.TextXAlignment = Enum.TextXAlignment.Left
	User.TextScaled = true
	User.Parent = Plr

	local Disp = Instance.new("TextLabel")
	Disp.Name = "Disp"
	Disp.Size = UDim2.new(0.9561409, -58, 0.405, 0)
	Disp.BackgroundTransparency = 1
	Disp.Position = UDim2.new(0.0175436, 54, 0.09, 0)
	Disp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Disp.FontSize = Enum.FontSize.Size14
	Disp.TextSize = 14
	Disp.TextColor3 = Color3.fromRGB(255, 255, 255)
	Disp.Text = plr.DisplayName
	Disp.TextWrapped = true
	Disp.Font = Enum.Font.GothamMedium
	Disp.TextWrap = true
	Disp.TextXAlignment = Enum.TextXAlignment.Left
	Disp.TextScaled = true
	Disp.Parent = Plr

	local Crew = Instance.new("ImageLabel")
	Crew.Name = "Crew"
	Crew.Size = UDim2.new(0, 24, 0, 24)
	Crew.BorderColor3 = Color3.fromRGB(255, 255, 255)
	Crew.BackgroundTransparency = 1
	Crew.Position = UDim2.new(1, -29, 0.08, 0)
	Crew.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
	Crew.Image = ""
	Crew.Parent = Plr

	local UICorner1 = Instance.new("UICorner")
	UICorner1.CornerRadius = UDim.new(0, 4)
	UICorner1.Parent = Crew

	local UICorner2 = Instance.new("UICorner")
	UICorner2.Parent = Plr

	Plr.Parent = Main.Scroll

	if LPlr:IsFriendsWith(plr.UserId) then
		Plr.LayoutOrder = 1
		Plr.BackgroundColor3 = Color3.fromRGB(0, 195, 255)
	end

	if gameIs == "HM" then
		pcall(function()
			if plr:GetRankInGroup(10878346) >= 5 then
				Plr.LayoutOrder = 2
				Plr.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
			end
		end)
	end

	Plr.MouseButton1Click:Connect(function()
		if Disp.TextColor3 == Color3.fromRGB(17, 255, 0) then
			trackRemove(plr)
		else
			Disp.TextColor3 = Color3.fromRGB(17, 255, 0)
			if Target.User.Text == plr.Name then
				Target.Track.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
			end
			table.insert(_G.tracking, plr.Name)
			trackChar(plr.Character)
			trackList(plr)
		end
	end)

	Plr.MouseButton2Click:Connect(function()
		if workspace.CurrentCamera.CameraSubject ~= LPlr.Character and workspace.CurrentCamera.CameraSubject ~= LPlr.Character.Humanoid then
			workspace.CurrentCamera.CameraSubject = LPlr.Character.Humanoid
			if Target.User.Text == plr.Name then
				Target.View.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
			end
		else
			workspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
			if Target.User.Text == plr.Name then
				Target.View.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
			end
		end
	end)

	Img.MouseButton1Click:Connect(function()
		if Disp.TextColor3 == Color3.fromRGB(17, 255, 0) then
			trackRemove(plr)
		else
			Disp.TextColor3 = Color3.fromRGB(17, 255, 0)
			if Target.User.Text == plr.Name then
				Target.Track.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
			end
			table.insert(_G.tracking, plr.Name)
			trackChar(plr.Character)
			trackList(plr)
		end
	end)

	Img.MouseButton2Click:Connect(function()
		if gameIs == "HM" or gameIs == "DH" then
			Target.Visible = true
			PLAYA = plr
			if Disp.TextColor3 == Color3.fromRGB(17, 255, 0) then
				Target.Track.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
			else
				Target.Track.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
			end
			if workspace.CurrentCamera.CameraSubject == plr.Character.Humanoid then
				Target.View.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
			else
				Target.View.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
			end
			if health then health:Disconnect() end
			if armour then armour:Disconnect() end
			Target.StompFX.Text = "Stomp Effect"
			Target.Crew.Text = "Crew Name"
			Target.CrewID.Text = "Crew ID"
			Target.User.Text = plr.Name
			Target.Disp.Text = plr.DisplayName
			Target.ImgPlr.Image = "rbxthumb://type=AvatarHeadShot&id="..plr.UserId.."&w=100&h=100"
			Target.Health.Text = math.round(plr.Character.Humanoid.Health)
			health = plr.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
				Target.Health.Text = math.round(plr.Character.Humanoid.Health)
			end)
    	    --[[died = plr.Character.Humanoid.Died:Connect(function()
    	        health:Disconnect()
    	        if gameIs == "DH" then armour:Disconnect() end
    	    end)]]
			if gameIs == "HM" then
				Target.ImgCrew.Image = "rbxthumb://type=GroupIcon&id="..plr.Information.Crew.Value.."&w=150&h=150"
				Target.CrewID.Text = plr.Information.Crew.Value
				Target.Armour.Text = math.round(plr.Information.Armor.Value)
				armour = plr.Information.Armor:GetPropertyChangedSignal("Value"):Connect(function()
					Target.Armour.Text = math.round(plr.Information.Armor.Value)
				end)
				pcall(function()
					Target.StompFX.Text = plr.Information.KillFX.Value
					Target.Crew.Text = gps:GetGroupInfoAsync(plr.Information.Crew.Value).Name
				end)
			else
				Target.Armour.Text = math.round(plr.Character.BodyEffects.Armor.Value)
				Target.StompFX.Text = "$"..formatInt(plr.DataFolder.Currency.Value)
				armour = plr.Character.BodyEffects.Armor:GetPropertyChangedSignal("Value"):Connect(function()
					Target.Armour.Text = math.round(plr.Character.BodyEffects.Armor.Value)
				end)
				if plr:WaitForChild("DataFolder"):WaitForChild("Information"):FindFirstChild("Crew") then
					Target.ImgCrew.Image = "rbxthumb://type=GroupIcon&id="..plr.DataFolder.Information.Crew.Value.."&w=150&h=150"
					Target.CrewID.Text = plr.DataFolder.Information.Crew.Value
					pcall(function()
						Target.Crew.Text = gps:GetGroupInfoAsync(plr.DataFolder.Information.Crew.Value).Name
					end)
				end
			end
			for i, v in pairs(Target.ScrollG:GetChildren()) do
				if v.Name ~= "UIListLayout" and v.Name ~= "UIPadding" then
					v:Destroy()
				end
			end
			for i, tool in pairs(plr.Backpack:GetChildren()) do
				if tool:IsA("Tool") then
					local Item = Instance.new("TextButton")
					Item.Name = "Item"
					Item.LayoutOrder = 1
					Item.Size = UDim2.new(1, 0, 0, 30)
					Item.BorderColor3 = Color3.fromRGB(255, 255, 255)
					Item.BackgroundTransparency = 0.9
					Item.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
					Item.FontSize = Enum.FontSize.Size24
					Item.TextSize = 20
					Item.TextColor3 = Color3.fromRGB(255, 255, 255)
					Item.Text = ""
					Item.Font = Enum.Font.Gotham
					Item.Parent = Target.ScrollG
					local Img = Instance.new("ImageLabel")
					Img.Name = "Img"
					Img.Size = UDim2.new(0, 30, 0, 30)
					Img.BorderColor3 = Color3.fromRGB(255, 255, 255)
					Img.BackgroundTransparency = 0.9
					Img.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
					Img.Image = tool.TextureId
					Img.Parent = Item
					local Txt = Instance.new("TextLabel")
					Txt.Name = "Txt"
					Txt.AnchorPoint = Vector2.new(0, 0.5)
					Txt.Size = UDim2.new(0.727, 0, 0.8, 0)
					Txt.BackgroundTransparency = 1
					Txt.Position = UDim2.new(-0.14, 54, 0.5, 0)
					Txt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Txt.FontSize = Enum.FontSize.Size14
					Txt.TextSize = 14
					Txt.TextColor3 = Color3.fromRGB(255, 255, 255)
					Txt.Text = tool.Name
					Txt.TextWrapped = true
					Txt.Font = Enum.Font.GothamMedium
					Txt.TextWrap = true
					Txt.TextScaled = true
					Txt.Parent = Item
					if tool:FindFirstChild("GunScript") then
						Item.LayoutOrder = 0
					end
				end
			end
		end
	end)

	task.spawn(function()
		pcall(function()
			if gameIs == "HM" then
				local crew = plr:WaitForChild("Information"):WaitForChild("Crew", 5)
				if crew then
					Crew.Image = "rbxthumb://type=GroupIcon&id="..crew.Value.."&w=150&h=150"
				end
			elseif gameIs == "DH" then
				local crew = plr:WaitForChild("DataFolder"):WaitForChild("Information"):WaitForChild("Crew", 5)
				if crew then
					Crew.Image = "rbxthumb://type=GroupIcon&id="..crew.Value.."&w=150&h=150"
				end
			end
		end)
		if trackNewPlayers == true then
			Disp.TextColor3 = Color3.fromRGB(17, 255, 0)
			table.insert(_G.tracking, plr.Name)
			trackChar(plr.Character or plr.Character:Wait())
			trackList(plr)
		end
	end)
end

-- SEARCH

function updateSearch()
	local InputText = string.upper(Search.Text)
	for _, button in pairs(Main.Scroll:GetChildren()) do
		if button:IsA("TextButton") then
			if InputText == "" or string.find(string.upper(button.Name), InputText) ~= nil or string.find(string.upper(button.Text), InputText) ~= nil then
				button.Visible = true
			else
				button.Visible = false
			end
		end
	end
end

Search.Focused:Connect(function()
	tws:Create(Search.UIStroke, TweenInfo.new(0.25), {Thickness = 2}):Play()
end)

Search.FocusLost:Connect(function()
	Main.Scroll.CanvasPosition = Vector2.new(0, 0)
	tws:Create(Search.UIStroke, TweenInfo.new(0.25), {Thickness = 1}):Play()
end)

Search.Changed:Connect(updateSearch)

-- BUTTONS

Target.Track.MouseButton1Click:Connect(function()
	local plr = plrs:FindFirstChild(User.Text)
	if not plr then return end
	if Main.Scroll[plr.Name].Disp.TextColor3 == Color3.fromRGB(17, 255, 0) then
		trackRemove(plr)
	else
		Main.Scroll[plr.Name].Disp.TextColor3 = Color3.fromRGB(17, 255, 0)
		if Target.User.Text == plr.Name then
			Target.Track.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		end
		table.insert(_G.tracking, plr.Name)
		trackChar(plr.Character)
		trackList(plr)
	end
end)

Target.View.MouseButton1Click:Connect(function()
	local plr = plrs:FindFirstChild(User.Text)
	if not plr then return end
	if workspace.CurrentCamera.CameraSubject ~= LPlr.Character and workspace.CurrentCamera.CameraSubject ~= LPlr.Character.Humanoid then
		workspace.CurrentCamera.CameraSubject = LPlr.Character.Humanoid
		Target.View.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
	else
		workspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
		Target.View.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	end
end)

Target.Refresh.MouseButton1Click:Connect(function()
	local plr = game.Players:FindFirstChild(Target.User.Text)
	if not plr then return end
	if gameIs == "HM" or gameIs == "DH" then
		Target.Visible = true
		if Main.Scroll[plr.Name].Disp.TextColor3 == Color3.fromRGB(17, 255, 0) then
			Target.Track.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		else
			Target.Track.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
		end
		if workspace.CurrentCamera.CameraSubject == plr.Character.Humanoid then
			Target.View.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		else
			Target.View.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
		end
		if health then health:Disconnect() end
		if armour then armour:Disconnect() end
		Target.StompFX.Text = "Stomp Effect"
		Target.Crew.Text = "Crew Name"
		Target.CrewID.Text = "Crew ID"
		Target.User.Text = plr.Name
		Target.Disp.Text = plr.DisplayName
		Target.ImgPlr.Image = "rbxthumb://type=AvatarHeadShot&id="..plr.UserId.."&w=100&h=100"
		Target.Health.Text = math.round(plr.Character.Humanoid.Health)
		health = plr.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
			Target.Health.Text = math.round(plr.Character.Humanoid.Health)
		end)
    	    --[[died = plr.Character.Humanoid.Died:Connect(function()
    	        health:Disconnect()
    	        if gameIs == "DH" then armour:Disconnect() end
    	    end)]]
		if gameIs == "HM" then
			Target.ImgCrew.Image = "rbxthumb://type=GroupIcon&id="..plr.Information.Crew.Value.."&w=150&h=150"
			Target.CrewID.Text = plr.Information.Crew.Value
			Target.Armour.Text = math.round(plr.Information.Armor.Value)
			armour = plr.Information.Armor:GetPropertyChangedSignal("Value"):Connect(function()
				Target.Armour.Text = math.round(plr.Information.Armor.Value)
			end)
			pcall(function()
				Target.StompFX.Text = plr.Information.KillFX.Value
				Target.Crew.Text = gps:GetGroupInfoAsync(plr.Information.Crew.Value).Name
			end)
		else
			Target.Armour.Text = math.round(plr.Character.BodyEffects.Armor.Value)
			Target.StompFX.Text = "$"..formatInt(plr.DataFolder.Currency.Value)
			armour = plr.Character.BodyEffects.Armor:GetPropertyChangedSignal("Value"):Connect(function()
				Target.Armour.Text = math.round(plr.Character.BodyEffects.Armor.Value)
			end)
			if plr:WaitForChild("DataFolder"):WaitForChild("Information"):FindFirstChild("Crew") then
				Target.ImgCrew.Image = "rbxthumb://type=GroupIcon&id="..plr.DataFolder.Information.Crew.Value.."&w=150&h=150"
				Target.CrewID.Text = plr.DataFolder.Information.Crew.Value
				pcall(function()
					Target.Crew.Text = gps:GetGroupInfoAsync(plr.DataFolder.Information.Crew.Value).Name
				end)
			end
		end
		for i, v in pairs(Target.ScrollG:GetChildren()) do
			if v.Name ~= "UIListLayout" and v.Name ~= "UIPadding" then
				v:Destroy()
			end
		end
		for i, tool in pairs(plr.Backpack:GetChildren()) do
			if tool:IsA("Tool") then
				local Item = Instance.new("TextButton")
				Item.Name = "Item"
				Item.LayoutOrder = 1
				Item.Size = UDim2.new(1, 0, 0, 30)
				Item.BorderColor3 = Color3.fromRGB(255, 255, 255)
				Item.BackgroundTransparency = 0.9
				Item.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
				Item.FontSize = Enum.FontSize.Size24
				Item.TextSize = 20
				Item.TextColor3 = Color3.fromRGB(255, 255, 255)
				Item.Text = ""
				Item.Font = Enum.Font.Gotham
				Item.Parent = Target.ScrollG
				local Img = Instance.new("ImageLabel")
				Img.Name = "Img"
				Img.Size = UDim2.new(0, 30, 0, 30)
				Img.BorderColor3 = Color3.fromRGB(255, 255, 255)
				Img.BackgroundTransparency = 0.9
				Img.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
				Img.Image = tool.TextureId
				Img.Parent = Item
				local Txt = Instance.new("TextLabel")
				Txt.Name = "Txt"
				Txt.AnchorPoint = Vector2.new(0, 0.5)
				Txt.Size = UDim2.new(0.727, 0, 0.8, 0)
				Txt.BackgroundTransparency = 1
				Txt.Position = UDim2.new(-0.14, 54, 0.5, 0)
				Txt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Txt.FontSize = Enum.FontSize.Size14
				Txt.TextSize = 14
				Txt.TextColor3 = Color3.fromRGB(255, 255, 255)
				Txt.Text = tool.Name
				Txt.TextWrapped = true
				Txt.Font = Enum.Font.GothamMedium
				Txt.TextWrap = true
				Txt.TextScaled = true
				Txt.Parent = Item
				if tool:FindFirstChild("GunScript") then
					Item.LayoutOrder = 0
				end
			end
		end
	end
end)

HM.MouseButton1Click:Connect(function()
	local l__MainScreenGui__4 = LPlr.PlayerGui.MainScreenGui
	local l__HttpService__7 = game:GetService("HttpService")
	local u4 = require(game.ReplicatedStorage:FindFirstChild("Modules"):FindFirstChild("MainModule")).ReturnList()

	if l__MainScreenGui__4.TradeUI.Visible == true then
		l__MainScreenGui__4.TradeUI.Visible = false
	end
	if l__MainScreenGui__4.Playerslist.Visible == true then
		l__MainScreenGui__4.Playerslist.Visible = false
	end
	if l__MainScreenGui__4.MAINHUD.CrewJoining.Visible == true then
		l__MainScreenGui__4.MAINHUD.CrewJoining.Visible = false
	end
	if l__MainScreenGui__4.MAINHUD.ServerMembers.Visible == true then
		l__MainScreenGui__4.MAINHUD.ServerMembers.Visible = false
	end
	if l__MainScreenGui__4.MAINHUD.SettingsFrame.Visible == true then
		l__MainScreenGui__4.MAINHUD.SettingsFrame.Visible = false
	end
	if l__MainScreenGui__4.InventoryUI.Visible ~= false then
		l__MainScreenGui__4.InventoryUI.Visible = false
		return
	end
	local v20, v21 = l__MainScreenGui__4.InventoryUI.ScrollingFrame:GetChildren()
	while true do
		local v22, v23 = next(v20, v21)
		if not v22 then
			break
		end
		v21 = v22
		if v23:IsA("Frame") then
			v23:Destroy()
		end	
	end
	local function u9(p5, p6, p7, p8)
		local p4 = true
		if p6 ~= "N" then
			local v24 = l__MainScreenGui__4.InventoryUI.Template:Clone()
			v24.Name = p5
			v24.TextButton.Text = p5
			v24.Parent = l__MainScreenGui__4.InventoryUI.ScrollingFrame
			v24.Visible = true
			if u4[p5] ~= nil then
				v24.TextButton.UIGradient.Enabled = true
				v24.TextButton.UIGradient.Color = ColorSequence.new(u4[p5].Color)
				if u4[p5].Rotate == true then
					tws:Create(v24:FindFirstChild("TextButton"):FindFirstChild("UIGradient"), TweenInfo.new(2.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1), {
						Rotation = 360
					}):Play()
				else
					v24.TextButton.UIGradient.Rotation = 0
				end
			end
			if p4 == true then
				local u10 = nil
				u10 = game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function()
					l__MainScreenGui__4.InventoryUI.Visible = false
					for v25, v26 in pairs(l__MainScreenGui__4.InventoryUI.ScrollingFrame:GetChildren()) do
						if v26:IsA("Frame") then
							v26:Destroy()
						end
					end
					u10:Disconnect()
				end)
			end
			local u11 = 0
			local u12 = nil
		end
	end
	l__MainScreenGui__4.InventoryUI.Inventory.TextColor3 = Color3.fromRGB(255, 255, 255)

	local v35
	local v36

	for i, v in pairs(PLAYA.Information.Inventory:GetChildren()) do
		u9(string.sub(v.Name, 3), string.sub(v.Name, 1, 1), v.Name, l__HttpService__7:GenerateGUID(true))
		if PLAYA.Information.ExtraInv.Value == false then
			v35 = 100
		else
			v35 = 250
		end
		l__MainScreenGui__4.InventoryUI.Inventory.Text = PLAYA.Name.."'s Inventory [" .. i .. "/" .. tostring(v35) .. "]"
		if v35 < i then
			l__MainScreenGui__4.InventoryUI.Inventory.TextColor3 = Color3.fromRGB(200, 0, 0)
		end
		if #PLAYA.Information.Inventory:GetChildren() < 1 then
			if PLAYA.Information.ExtraInv.Value == false then
				v36 = 100
			else
				v36 = 250
			end
			l__MainScreenGui__4.InventoryUI.Inventory.Text = PLAYA.Name.."'s Inventory [0/" .. tostring(v36) .. "]"
		end
	end
	l__MainScreenGui__4.InventoryUI.Visible = true
end)

Close.MouseButton1Click:Connect(function()
	Target.Visible = false
end)

Rejoin.MouseButton1Click:Connect(function()
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LPlr)
end)

All.MouseButton1Click:Connect(function()
	if All.BackgroundColor3 == Color3.fromRGB(138, 138, 138) then
		All.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		trackNewPlayers = true
		for i, plr in pairs(plrs:GetPlayers()) do
			if plr.Name ~= LPlr.Name then
				table.insert(_G.tracking, plr.Name)
				trackChar(plr.Character or plr.Character:Wait())
				Main.Scroll[plr.Name].Disp.TextColor3 = Color3.fromRGB(17, 255, 0)
				trackList(plr)
			end
		end
	else
		All.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
		table.clear(_G.tracking)
		tFolder:ClearAllChildren()
		trackNewPlayers = false
		for i, plr in pairs(plrs:GetPlayers()) do
			if plr.Name ~= LPlr.Name then
				Main.Scroll[plr.Name].Disp.TextColor3 = Color3.fromRGB(255, 255, 255)
				trackRemove(plr)
			end
		end
	end
end)

Opts.MouseButton1Click:Connect(function()
	if Opts.BackgroundColor3 == Color3.fromRGB(138, 138, 138) then
		Opts.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		Options:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Quint", 0.5, true)
	else
		Opts.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
		Options:TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Quint", 0.5, true)
	end
end)

local LightingCache = {}

Full.MouseButton1Click:Connect(function()
	if Full.BackgroundColor3 == Color3.fromRGB(138, 138, 138) then
		Full.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		LightingCache = {game.Lighting.OutdoorAmbient, game.Lighting.Brightness, game.Lighting.FogEnd, game.Lighting.ClockTime}
		game.Lighting.GlobalShadows = false
		game.Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
		game.Lighting.Brightness = 2
		game.Lighting.FogEnd = 100000
		game.Lighting.ClockTime = 14
	else
		Full.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
		game.Lighting.GlobalShadows = true
		game.Lighting.OutdoorAmbient = LightingCache[1]
		game.Lighting.Brightness = LightingCache[2]
		game.Lighting.FogEnd = LightingCache[3]
		game.Lighting.ClockTime = LightingCache[4]
	end
end)

-- KEYBINDS

uis.InputBegan:Connect(function(input, gpe)
	if gpe then return end
	if input.UserInputType == Enum.UserInputType.Keyboard then
		if input.KeyCode == Enum.KeyCode.K then
			macro.Enabled = not macro.Enabled
		elseif input.KeyCode == Enum.KeyCode.J then
			if visible == true then
				visible = false
				for i, v in pairs(tFolder:GetChildren()) do
					v.Enabled = false
					v.Tag.Enabled = false
				end
			elseif visible == false then
				visible = true
				for i, v in pairs(tFolder:GetChildren()) do
					v.Enabled = true
					v.Tag.Enabled = true
				end
			end
		end
	elseif input.UserInputType == Enum.UserInputType.MouseButton3 then
		local plr = plrs:FindFirstChild(mouse.Target.Parent.Name)
		local plr2 = plrs:FindFirstChild(mouse.Target.Parent.Parent.Name)
		if plr2 then
			plr = plr2
		end
		if plr then
			if Main.Scroll[plr.Name].Disp.TextColor3 == Color3.fromRGB(17, 255, 0) then
				tFolder[plr.Name]:Destroy()
				Main.Scroll[plr.Name].Disp.TextColor3 = Color3.fromRGB(255, 255, 255)
				local found = table.find(_G.tracking, plr.Name)
				if found then
					table.remove(_G.tracking, found)
				end
			else
				Main.Scroll[plr.Name].Disp.TextColor3 = Color3.fromRGB(17, 255, 0)
				table.insert(_G.tracking, plr.Name)
				trackChar(plr.Character)
			end
		end
	end
end)

-- DRAGGING

local frame = Main
local frame2 = Target

local dragToggle = nil
local dragSpeed = 0.25
local dragStart = nil
local startPos = nil

local dragToggle2 = nil
local dragSpeed2 = 0.25
local dragStart2 = nil
local startPos2 = nil

function updateInput2(input)
	local delta = input.Position - dragStart2
	local position = UDim2.new(startPos2.X.Scale, startPos2.X.Offset + delta.X,
		startPos2.Y.Scale, startPos2.Y.Offset + delta.Y)
	game:GetService('TweenService'):Create(frame2, TweenInfo.new(dragSpeed2), {Position = position}):Play()
end

function updateInput(input)
	local delta = input.Position - dragStart
	local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
		startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
end

frame.InputBegan:Connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
		dragToggle = true
		dragStart = input.Position
		startPos = frame.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragToggle = false
			end
		end)
	end
end)

frame2.InputBegan:Connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
		dragToggle2 = true
		dragStart2 = input.Position
		startPos2 = frame2.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragToggle2 = false
			end
		end)
	end
end)

uis.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		if dragToggle then
			updateInput(input)
		end
		if dragToggle2 then
			updateInput2(input)
		end
	end
end)

-- ADD PLAYERS / ADMIN CHECK

if gameIs == "HM" then
	workspace.Characters.ChildAdded:Connect(function(char)
		if table.find(_G.tracking, char.Name) then
			trackChar(char)
		end
	end)
elseif gameIs == "DH" then
	workspace.Players.ChildAdded:Connect(function(char)
		if table.find(_G.tracking, char.Name) then
			trackChar(char)
		end
	end)
else
	workspace.ChildAdded:Connect(function(char)
		if table.find(_G.tracking, char.Name) then
			trackChar(char)
		end
	end)
end

coroutine.wrap(function()
	for i, plr in pairs(plrs:GetPlayers()) do
		if plr ~= LPlr then
			createBtn(plr)
		end
	end
end)()

local success, err = pcall(function()
	if gameIs == "HM" then
		for i, plr in pairs(plrs:GetChildren()) do
			pcall(function()
				if plr:GetRankInGroup(10878346) >= 5 then
					sui:SetCore("SendNotification", {
						Title = plr:GetRoleInGroup(10878346);
						Text = plr.Name;
						Icon = "rbxthumb://type=AvatarHeadShot&id="..plr.UserId.."&w=150&h=150";
						Duration = 5
					})
				end
			end)
		end
	end
end)

plrs.PlayerAdded:Connect(function(plr)
	if table.find(_G.tracking, plr.Name) then
		if plrNoti then
			sui:SetCore("SendNotification", {
				Title = plr.Name;
				Text = "rejoined the game";
				Icon = "rbxthumb://type=AvatarHeadShot&id="..plr.UserId.."&w=150&h=150";
				Duration = 5
			})
		end
	end
	createBtn(plr)
	if Options.Scroll:FindFirstChild(plr.Name) then
		Options.Scroll:FindFirstChild(plr.Name).Txt.TextColor3 = Color3.fromRGB(255, 255, 255)
	end
	if gameIs == "HM" then
		pcall(function()
			if plr:GetRankInGroup(10878346) >= 5 then
				sui:SetCore("SendNotification", {
					Title = plr:GetRoleInGroup(10878346);
					Text = plr.Name;
					Icon = "rbxthumb://type=AvatarHeadShot&id="..plr.UserId.."&w=150&h=150";
					Duration = 5
				})
			end
		end)
	end
end)

plrs.PlayerRemoving:Connect(function(plr)
	if Main.Scroll:FindFirstChild(plr.Name) then
		Main.Scroll[plr.Name]:Destroy()
	end
	if Options.Scroll:FindFirstChild(plr.Name) then
		Options.Scroll:FindFirstChild(plr.Name).Txt.TextColor3 = Color3.fromRGB(255, 50, 50)
	end
	if tFolder:FindFirstChild(plr.Name) then
		tFolder[plr.Name]:Destroy()
		if plrNoti then
			sui:SetCore("SendNotification", {
				Title = plr.Name;
				Text = "left the game";
				Icon = "rbxthumb://type=AvatarHeadShot&id="..plr.UserId.."&w=150&h=150";
				Duration = 5
			})
		end
	end
end)
