local Type = require(script.Parent.Type)

local function AssignChildMapDefault(Parent: Instance, ChildMap: { [string]: Type.Element })
	for Name, Child in ChildMap do
		if Child.Type == "UseChild" then
			Child.Default = (Parent :: any)[Name]
			AssignChildMapDefault(Child.Default :: any, Child.ChildMap)
		end
	end
end

local function Root(Default: Instance, PropMap: { [string]: any }, ChildMap: { [string]: Type.Element }?): Type.Element
	if ChildMap then
		AssignChildMapDefault(Default, ChildMap)
	end

	return {
		Type = "UseRoot" :: "UseRoot",

		Default = Default,

		PropMap = PropMap,
		ChildMap = ChildMap or {},
	}
end

local function Child(PropMap: { [string]: any }, ChildMap: { [string]: Type.Element }?): Type.Element
	return {
		Type = "UseChild" :: "UseChild",

		PropMap = PropMap,
		ChildMap = ChildMap or {},
	}
end

return {
	Root = Root,
	Child = Child,
}
