local Players = game:GetService("Players")

local Eye = require(script.Parent:WaitForChild("Eye"))

local NewCounter = require(script.Parent:WaitForChild("NewCounter"))
local NewStopwatch = require(script.Parent:WaitForChild("NewStopwatch"))
local PrefabCounter = require(script.Parent:WaitForChild("PrefabCounter"))
local PrefabStopwatch = require(script.Parent:WaitForChild("PrefabStopwatch"))

local function App()
	return Eye.New.ScreenGui({}, {
		NewCounter = NewCounter({
			AnchorPoint = Vector2.new(1, 1),
			Position = UDim2.new(0.5, -10, 0.5, -10),
			Size = UDim2.fromOffset(200, 100),
		}),

		NewStopwatch = NewStopwatch({
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.new(0.5, 10, 0.5, -10),
			Size = UDim2.fromOffset(200, 100),
		}),

		PrefabCounter = PrefabCounter({
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(0.5, -10, 0.5, 10),
			Size = UDim2.fromOffset(200, 100),
		}),

		PrefabStopwatch = PrefabStopwatch({
			AnchorPoint = Vector2.new(0, 0),
			Position = UDim2.new(0.5, 10, 0.5, 10),
			Size = UDim2.fromOffset(200, 100),
		}),
	})
end

Eye.Create(App(), Eye.Host(Players.LocalPlayer.PlayerGui), "EyeTest")
