local RunService = game:GetService("RunService")

local Eye = require(script.Parent.Eye)

local ButtonPrefab = script.Parent.ButtonPrefab

local PrefabCounter = Eye.Component(function(Props, Children)
	local Time, SetTime = Eye.useState(0)

	Eye.useEffect(function(SetTime: typeof(SetTime))
		local Connection = RunService.Heartbeat:Connect(function(DeltaTime)
			SetTime(function(Time)
				return Time + DeltaTime
			end)
		end)

		return function()
			Connection:Disconnect()
		end
	end, SetTime)

	return Eye.Use.Root(ButtonPrefab, {
		AnchorPoint = Props.AnchorPoint,
		Position = Props.Position,
		Size = Props.Size,

		["@Activated"] = function()
			SetTime(0)
		end,
	}, {
		TextLabel = Eye.Use.Child({
			Text = tostring(math.round(Time * 100) / 100),
		}),
	})
end)

return PrefabCounter
