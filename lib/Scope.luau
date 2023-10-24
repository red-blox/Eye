local Type = require(script.Parent.Type)

local GlobalScope: Type.Scope?

local function Pack(...: any): { any }
	return { ... }
end

local function useScope()
	assert(GlobalScope, "You can only use hooks inside components")

	return GlobalScope
end

local function useState<T>(InitialValue: T)
	local Scope = useScope()

	local Index = Scope.Index
	Scope.Index += 1

	local Value: Type.ScopeState

	if Scope.First then
		Value = {
			Type = "State",
			Value = InitialValue,
		}

		Scope.Stack[Index] = Value
	else
		local IndexedValue = Scope.Stack[Index]
		Value = assert(IndexedValue.Type == "State" and IndexedValue, "Hooks called out of order")
	end

	return Value.Value :: T,
		function(Update: T | (T) -> T, Force: boolean?)
			local New: T

			if type(Update) == "function" then
				New = Update(Value.Value)
			else
				New = Update
			end

			if Force or New ~= Value.Value then
				Value.Value = New
				Scope.Mark(Scope.Node)
			end
		end
end

local function useEffect<T...>(Callback: (T...) -> (() -> ())?, ...: T...)
	local Scope = useScope()

	local Index = Scope.Index
	Scope.Index += 1

	if Scope.First then
		Scope.Stack[Index] = {
			Type = "Effect",
			DepList = Pack(...),
			Cleanup = Callback(...),
		}
	else
		local Value = Scope.Stack[Index]
		assert(Value and Value.Type == "Effect", "Hooks called out of order")

		for i, v in Value.DepList do
			if select(i, ...) ~= v then
				if Value.Cleanup then
					Value.Cleanup()
				end

				Value.DepList = Pack(...)
				Value.Cleanup = Callback(...)

				break
			end
		end
	end
end

local function useComputed<T..., U...>(Callback: (T...) -> U..., ...: T...): U...
	local Scope = useScope()

	local Index = Scope.Index
	Scope.Index += 1

	if Scope.First then
		local Value: Type.ScopeComputed = {
			Type = "Computed",

			DepList = Pack(...),
			RetList = Pack(Callback(...)),
		}

		Scope.Stack[Index] = Value
		return table.unpack(Value.RetList)
	else
		local Value = Scope.Stack[Index]
		assert(Value and Value.Type == "Computed", "Hooks called out of order")

		for i, v in Value.DepList do
			if select(i, ...) ~= v then
				Value.DepList = Pack(...)
				Value.RetList = Callback(...)

				return table.unpack(Value.RetList)
			end
		end
	end
end

local function useValue<T>(Value: Type.Value<T>)
	local Scope = useScope()

	useEffect(function(Value: Type.Value<T>)
		Value.DepSet[Scope] = true

		return function()
			Value.DepSet[Scope] = nil
		end
	end, Value)

	return Value.Current
end

local function Scope(
	Callback: (PropMap: { [string]: any }, ChildMap: { [string]: Type.Element }) -> Type.Element,
	Mark: (self: Type.ScopeNode?) -> ()
): Type.Scope
	return {
		Stack = {},
		Index = 1,
		First = true,

		Callback = Callback,
		Mark = Mark,
	}
end

local function Run(Scope: Type.Scope, PropMap: { [string]: any }, ChildMap: { [string]: Type.Element })
	local Previous = GlobalScope

	Scope.Index = 1
	GlobalScope = Scope

	local Element = Scope.Callback(PropMap, ChildMap)

	Scope.First = false
	GlobalScope = Previous

	return Element
end

local function End(Scope: Type.Scope)
	for _, Value in Scope.Stack do
		if Value.Type == "Effect" and Value.Cleanup then
			Value.Cleanup()
		end
	end
end

return {
	new = Scope,
	Run = Run,
	End = End,

	useState = useState,
	useEffect = useEffect,
	useComputed = useComputed,
	useValue = useValue,
}
