local Type = require(script.Type)

local New = require(script.New)
local Use = require(script.Use)
local Scope = require(script.Scope)
local Value = require(script.Value)
local Render = require(script.Render)

return {
	New = New,
	Use = Use,

	Host = function(Host: Instance): Type.HostNode
		return {
			Type = "Host",
			Instance = Host,
		}
	end,

	Component = function<T>(
		Callback: (Props: T & { [string]: any }, Children: { [string]: Type.Element }) -> Type.Element
	)
		return function(Props: T & { [string]: any }, Children: { [string]: Type.Element }?): Type.Element
			return {
				Type = "Scope" :: "Scope",

				Callback = Callback :: any,

				PropMap = Props,
				ChildMap = Children or {},
			}
		end
	end,

	Create = Render.CreateNode,
	Update = Render.ReplaceNode,
	Destroy = Render.DestroyNode,

	useState = Scope.useState,
	useComputed = Scope.useComputed,
	useEffect = Scope.useEffect,
	useValue = Scope.useValue,

	Value = Value,
}
