local Type = require(script.Parent.Type)

local function Set<T>(self: Type.Value<T>, Update: T | (T) -> T, Force: boolean)
	local New: T

	if type(Update) == "function" then
		New = Update(self.Current)
	else
		New = Update
	end

	if New ~= self.Current or Force then
		self.Current = New

		for Scope in self.DepSet do
			Scope.Mark(Scope.Node)
		end
	end
end

local function Value<T>(InitialValue: T): Type.Value<T>
	return {
		DepSet = {},
		Current = InitialValue,

		Set = Set,
	} :: any
end

return Value
