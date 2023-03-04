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

--

local tFolder = Instance.new("Folder")
tFolder.Name = "Tracking"
tFolder.Parent = macro

_G.tracking = {}
--local connections = {}

local visible = true
local plrNoti = true
local chatLog = false
local trackNewPlayers = false

local health
local armour
local died

--

local function trackChar(char)
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
					h.OutlineColor = Color3.fromRGB(0, 255, 255)
				else
					h.OutlineColor = Color3.fromRGB(255, 0, 0)
				end
			elseif gameIs == "DH" then
				if plr.DataFolder.Information.Crew.Value == LPlr.DataFolder.Information.Crew.Value then
					h.OutlineColor = Color3.fromRGB(0, 255, 255)
				else
					h.OutlineColor = Color3.fromRGB(255, 0, 0)
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

	local Img = Instance.new("ImageLabel")
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
		print("Clicked")
		if Disp.TextColor3 == Color3.fromRGB(17, 255, 0) then
			trackRemove(plr)
		else
			Disp.TextColor3 = Color3.fromRGB(17, 255, 0)
			table.insert(_G.tracking, plr.Name)
			trackChar(plr.Character)
			trackList(plr)
		end
	end)
	
	Plr.MouseButton2Click:Connect(function()
		if workspace.CurrentCamera.CameraSubject ~= LPlr.Character and workspace.CurrentCamera.CameraSubject ~= LPlr.Character.Humanoid then
			workspace.CurrentCamera.CameraSubject = LPlr.Character.Humanoid
		else
			workspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
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
	tws:Create(Search.UIStroke, TweenInfo.new(0.25), {Thickness = 1}):Play()
end)

Search.Changed:Connect(updateSearch)

-- BUTTONS

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
local dragToggle = nil
local dragSpeed = 0.25
local dragStart = nil
local startPos = nil

local function updateInput(input)
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

uis.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		if dragToggle then
			updateInput(input)
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
