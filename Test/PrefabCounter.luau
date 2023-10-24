local Eye = require(script.Parent.Eye)

local ButtonPrefab = script.Parent.ButtonPrefab

local PrefabCounter = Eye.Component(function(Props, Children)
	local Count, SetCount = Eye.useState(0)

	return Eye.Use.Root(ButtonPrefab, {
		AnchorPoint = Props.AnchorPoint,
		Position = Props.Position,
		Size = Props.Size,

		["@Activated"] = function()
			SetCount(Count + 1)
		end,
	}, {
		TextLabel = Eye.Use.Child({
			Text = tostring(Count),
		}),
	})
end)

return PrefabCounter
