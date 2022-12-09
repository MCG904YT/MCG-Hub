-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local amount = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local label = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.BackgroundTransparency = 0.450
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.Position = UDim2.new(0.394072443, 0, 0.424242437, 0)
main.Size = UDim2.new(0, 192, 0, 184)
main.Active=true
main.Draggable=true

amount.Name = "amount"
amount.Parent = main
amount.BackgroundColor3 = Color3.fromRGB(170, 170, 255)
amount.Position = UDim2.new(0.125, 0, 0.440217406, 0)
amount.Size = UDim2.new(0, 143, 0, 50)
amount.Font = Enum.Font.SourceSans
amount.Text = "Amount Of Tools"
amount.TextColor3 = Color3.fromRGB(0, 0, 0)
amount.TextSize = 14.000

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = amount

label.Name = "label"
label.Parent = main
label.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
label.BorderColor3 = Color3.fromRGB(0, 0, 0)
label.Size = UDim2.new(0, 192, 0, 50)
label.Font = Enum.Font.LuckiestGuy
label.Text = "MCG"
label.TextColor3 = Color3.fromRGB(0, 0, 0)
label.TextSize = 25.000
label.TextWrapped = true

local plr=game.Players.LocalPlayer
local inv=#plr.Backpack:GetChildren()
repeat
	wait(0.1)
	local num = 0
	for i,v in pairs(game:GetService("CoreGui").RobloxGui.Backpack.Inventory.ScrollingFrame.UIGridFrame:GetChildren()) do
		if v:IsA("TextButton") then
			num += 1
		end
	end
	amount.Text = num.." Tools"
until num == 9999999999999
