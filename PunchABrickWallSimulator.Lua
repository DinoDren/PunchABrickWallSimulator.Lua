  local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local InfCash = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
main.Position = UDim2.new(0.361530721, 0, 0.23694779, 0)
main.Size = UDim2.new(0, 274, 0, 262)
main.Active = true
main.Draggable = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = main

Title.Name = "Title"
Title.Parent = main
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.Size = UDim2.new(0, 274, 0, 50)
Title.Font = Enum.Font.DenkOne
Title.Text = "Punch A Brick Wall Simulator Script Made By DINO#1390"
Title.TextColor3 = Color3.fromRGB(255, 0, 4)
Title.TextSize = 20.000
Title.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 12)
UICorner_2.Parent = Title

InfCash.Name = "InfCash"
InfCash.Parent = main
InfCash.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
InfCash.Position = UDim2.new(0.132537961, 0, 0.404393554, 0)
InfCash.Size = UDim2.new(0, 200, 0, 50)
InfCash.Font = Enum.Font.DenkOne
InfCash.Text = "Infinite Cash"
InfCash.TextColor3 = Color3.fromRGB(255, 0, 4)
InfCash.TextSize = 20.000

UICorner_3.CornerRadius = UDim.new(0, 12)
UICorner_3.Parent = InfCash

-- Scripts:

local function VIPNDZR_fake_script() -- InfCash.LocalScript 
	local script = Instance.new('LocalScript', InfCash)

	script.Parent.MouseButton1Click:connect(function()
		_G.AutoCash = true -- change to false to stop
	
	
	
		-------
	
		--this checks if there is the multipler in the brick wall, and if not it adds it so you can more money, idk if needed but i havent tested w/o it so ill keep it.
		for _, h in pairs(game:GetService("Workspace").Walls:GetDescendants()) do
			if h:IsA("Part") and h.Name == "Wall" then
				pt = h:GetChildren()
				if #pt == 0 then
					local mp = Instance.new("NumberValue")
					mp.Parent = h
					mp.Value = 300000000000
					mp.Name = "Multiplier"
				end
			end
		end
		--------
	
		while _G.AutoCash do
			workspace.UpgradeBone:FireServer()
			local args = {
				[1] = math.ceil(5* 1.9 ^ game.Players.LocalPlayer.BoneCount.Value),
				[2] = math.ceil(5* 1.9 ^ game.Players.LocalPlayer.BoneCount.Value)
			}
	
			workspace.AddBones:FireServer(unpack(args))
	
			firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").SellPart, 0)
			wait()
			firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").SellPart, 1)
		end
	end)
	
end
coroutine.wrap(VIPNDZR_fake_script)() 
