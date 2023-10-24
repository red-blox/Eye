local Eye = require(script.Parent.Eye)

local NewCounter = Eye.Component(function(Props, Children)
	local Count, SetCount = Eye.useState(0)

	return Eye.New.TextButton({
		AnchorPoint = Props.AnchorPoint,
		Position = Props.Position,
		Size = Props.Size,

		BackgroundColor3 = Color3.fromRGB(0, 170, 255),
		Text = "",

		["@Activated"] = function()
			SetCount(Count + 1)
		end,
	}, {
		Corner = Eye.New.UICorner({
			CornerRadius = UDim.new(0, 12),
		}),

		TextLabel = Eye.New.TextLabel({
			Text = tostring(Count),

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

return NewCounter
