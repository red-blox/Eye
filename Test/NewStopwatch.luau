local RunService = game:GetService("RunService")

local Eye = require(script.Parent.Eye)

local NewStopwatch = Eye.Component(function(Props, Children)
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

	return Eye.New.TextButton({
		AnchorPoint = Props.AnchorPoint,
		Position = Props.Position,
		Size = Props.Size,

		BackgroundColor3 = Color3.fromRGB(0, 170, 255),
		Text = "",

		["@Activated"] = function()
			SetTime(0)
		end,
	}, {
		Corner = Eye.New.UICorner({
			CornerRadius = UDim.new(0, 12),
		}),

		TextLabel = Eye.New.TextLabel({
			Text = tostring(math.round(Time * 100) / 100),

			FontFace = Font.fromEnum(Enum.Font.SourceSans),
			TextSize = 14,
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.fromScale(0.5, 0.5),
			BorderSizePixel = 0,
		}),
	})
end)

return NewStopwatch
