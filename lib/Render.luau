local RunService = game:GetService("RunService")

local Type = require(script.Parent.Type)
local Scope = require(script.Parent.Scope)

local UpdateSet: { [Type.ScopeNode]: boolean } = {}

local Logging = false
local Tab = 0

local function TabIn()
	if Logging then
		Tab += 1
	end
end

local function TabOut()
	if Logging then
		Tab -= 1
	end
end

local function Log(Text: string)
	if Logging then
		print(string.rep("\t", Tab) .. Text)
	end
end

local function Mark(self: Type.ScopeNode?)
	assert(self, "How did we get here?")

	UpdateSet[self] = true
end

local ApplyPropMap: (Node: Type.InstanceNode, PropMap: { [string]: any }) -> ()
local ApplyChildMap: (Node: Type.InstanceNode, ChildMap: { [string]: Type.Element }) -> ()

local UnwrapParentNode: (Node: Type.ParentNode) -> Instance

local CreateNode: (Element: Type.Element, Parent: Type.ParentNode, Name: string) -> Type.Node

local CleanNode: (Node: Type.Node, DestroyInstance: boolean) -> ()
local CleanInstanceNode: (Node: Type.InstanceNode, DestroyInstance: boolean) -> ()
local CleanScopeNode: (Node: Type.ScopeNode, DestroyInstance: boolean) -> ()

local ReplaceNode: (Node: Type.Node, Element: Type.Element) -> Type.Node
local DestroyNode: (Node: Type.Node) -> ()

function ApplyPropMap(Node: Type.InstanceNode, PropMap: { [string]: any })
	Log(`Applying PropMap to {Node.Name}`)
	TabIn()

	for Name, Connection in Node.ConnectionMap do
		Log(`Removing {Name}`)
		Connection:Disconnect()
	end

	table.clear(Node.ConnectionMap)

	for Prop in Node.PropMap do
		if PropMap[Prop] == nil then
			Log(`Removing {Prop}`)

			if Node.Default then
				(Node.Instance :: any)[Prop] = (Node.Default :: any)[Prop]
			else
				Node.Instance:ResetPropertyToDefault(Prop)
			end
		end
	end

	for Prop, Value in PropMap do
		local Prefix = string.sub(Prop, 1, 1)

		if Prefix < "A" then
			local Suffix = string.sub(Prop, 2)
			Log(`Applying {Prop}`)

			if Prefix == "@" then
				Node.ConnectionMap[Prop] = (Node.Instance :: any)[Suffix]:Connect(Value)
			elseif Prefix == "$" then
				Node.ConnectionMap[Prop] = Node.Instance:GetPropertyChangedSignal(Suffix):Connect(function()
					local New = (Node.Instance :: any)[Suffix]

					if Node.PropMap[Suffix] ~= nil then
						Node.PropMap[Suffix] = New
					end

					Value(New)
				end)
			end
		elseif Node.PropMap[Prop] ~= Value then
			(Node.Instance :: any)[Prop] = Value
			Node.PropMap[Prop] = Value

			Log(`Applying {Prop}`)
		end
	end

	TabOut()
end

function ApplyChildMap(Node: Type.InstanceNode, ChildMap: { [string]: Type.Element })
	Log(`Applying ChildMap to {Node.Name}`)
	TabIn()

	for Name, Child in Node.ChildMap do
		if ChildMap[Name] == nil then
			Log(`Removing {Name}`)
			TabIn()

			DestroyNode(Child)
			Node.ChildMap[Name] = nil

			TabOut()
		end
	end

	for Name, Child in ChildMap do
		if Node.ChildMap[Name] then
			Log(`Replacing {Name}`)
			TabIn()

			Node.ChildMap[Name] = ReplaceNode(Node.ChildMap[Name], Child)

			TabOut()
		else
			Log(`Creating {Name}`)
			TabIn()

			Node.ChildMap[Name] = CreateNode(Child, Node, Name)

			TabOut()
		end
	end

	TabOut()
end

function UnwrapParentNode(Node: Type.ParentNode)
	if Node.Type == "Scope" then
		return UnwrapParentNode(Node.Parent)
	else
		return Node.Instance
	end
end

function CreateNode(Element: Type.Element, Parent: Type.ParentNode, Name: string)
	Log(`Creating {Name}`)
	TabIn()

	local FinalNode: Type.Node

	if Element.Type == "Create" then
		local Node: Type.InstanceNode = {
			Type = "Instance" :: "Instance",

			Name = Name,
			Parent = Parent,

			Instance = Instance.new(Element.ClassName),

			PropMap = {},
			ChildMap = {},
			ConnectionMap = {},
		}

		ApplyPropMap(Node, Element.PropMap)
		ApplyChildMap(Node, Element.ChildMap)

		Node.Instance.Name = Name
		Node.Instance.Parent = UnwrapParentNode(Parent)

		FinalNode = Node
	elseif Element.Type == "UseRoot" then
		local Node: Type.InstanceNode = {
			Type = "Instance" :: "Instance",

			Name = Name,
			Parent = Parent,

			Default = Element.Default,
			Instance = Element.Default:Clone(),

			PropMap = {},
			ChildMap = {},
			ConnectionMap = {},
		}

		ApplyPropMap(Node, Element.PropMap)
		ApplyChildMap(Node, Element.ChildMap)

		Node.Instance.Name = Name
		Node.Instance.Parent = UnwrapParentNode(Parent)

		FinalNode = Node
	elseif Element.Type == "UseChild" then
		local Node: Type.InstanceNode = {
			Type = "Instance" :: "Instance",

			Name = Name,
			Parent = Parent,

			Default = Element.Default,
			Instance = (UnwrapParentNode(Parent) :: any)[Name],

			PropMap = {},
			ChildMap = {},
			ConnectionMap = {},
		}

		-- Don't set the name and parent because those are already
		-- set by the fact this instance was already cloned

		ApplyPropMap(Node, Element.PropMap)
		ApplyChildMap(Node, Element.ChildMap)

		FinalNode = Node
	elseif Element.Type == "Scope" then
		local Node: Type.ScopeNode = {
			Type = "Scope" :: "Scope",

			Name = Name,
			Parent = Parent,

			Scope = Scope.new(Element.Callback, Mark),
			Link = nil :: any,

			LastPropMap = Element.PropMap,
			LastChildMap = Element.ChildMap,
		}

		Node.Scope.Node = Node
		Node.Link = CreateNode(Scope.Run(Node.Scope, Element.PropMap, Element.ChildMap), Node, Name)

		FinalNode = Node
	else
		error("Unknown Element Type")
	end

	TabOut()

	return FinalNode
end

function CleanNode(Node: Type.Node, DestroyInstance: boolean)
	if Node.Type == "Instance" then
		CleanInstanceNode(Node, DestroyInstance)
	elseif Node.Type == "Scope" then
		CleanScopeNode(Node, DestroyInstance)
	end
end

function CleanInstanceNode(Node: Type.InstanceNode, DestroyInstance: boolean)
	for _, Child in Node.ChildMap do
		CleanNode(Child, false)
	end

	table.clear(Node.ChildMap)

	if DestroyInstance then
		Node.Instance:Destroy()
		table.clear(Node.PropMap)
	end
end

function CleanScopeNode(Node: Type.ScopeNode, DestroyInstance: boolean)
	CleanNode(Node.Link, DestroyInstance)

	Scope.End(Node.Scope)
end

function ReplaceNode(Node: Type.Node, Element: Type.Element)
	Log(`Replacing {Node.Name}`)
	TabIn()

	if Element.Type == "Create" then
		if Node.Type == "Instance" then
			if Node.Instance.ClassName ~= Element.ClassName or Node.Default ~= nil then
				CleanInstanceNode(Node, true)

				Node.Default = nil
				Node.Instance = Instance.new(Element.ClassName)

				Node.Instance.Name = Node.Name
				Node.Instance.Parent = UnwrapParentNode(Node.Parent)
			end

			ApplyPropMap(Node, Element.PropMap)
			ApplyChildMap(Node, Element.ChildMap)
		elseif Node.Type == "Scope" then
			-- In theory we could convert the node into an instance node,
			-- but this is not a typesafe operation and I don't think there
			-- will be many gains made by doing this. This should be
			-- explored in the future.

			DestroyNode(Node)
			return CreateNode(Element, Node.Parent, Node.Name)
		end
	elseif Element.Type == "UseRoot" then
		if Node.Type == "Instance" then
			if Node.Default ~= Element.Default then
				CleanInstanceNode(Node, true)

				Node.Default = Element.Default
				Node.Instance = Element.Default:Clone()

				Node.Instance.Name = Node.Name
				Node.Instance.Parent = UnwrapParentNode(Node.Parent)
			end

			ApplyPropMap(Node, Element.PropMap)
			ApplyChildMap(Node, Element.ChildMap)
		elseif Node.Type == "Scope" then
			DestroyNode(Node)
			return CreateNode(Element, Node.Parent, Node.Name)
		end
	elseif Element.Type == "UseChild" then
		if Node.Type == "Instance" then
			if Node.Default ~= Element.Default then
				CleanInstanceNode(Node, true)

				Node.Default = Element.Default
				Node.Instance = (UnwrapParentNode(Node.Parent) :: any)[Node.Name]

				Node.Instance.Name = Node.Name
				Node.Instance.Parent = UnwrapParentNode(Node.Parent)
			end

			ApplyPropMap(Node, Element.PropMap)
			ApplyChildMap(Node, Element.ChildMap)
		elseif Node.Type == "Scope" then
			DestroyNode(Node)
			return CreateNode(Element, Node.Parent, Node.Name)
		end
	elseif Element.Type == "Scope" then
		if Node.Type == "Instance" then
			DestroyNode(Node)
			return CreateNode(Element, Node.Parent, Node.Name)
		elseif Node.Type == "Scope" then
			if Node.Scope.Callback ~= Element.Callback then
				CleanScopeNode(Node, true)

				Node.Scope = Scope.new(Element.Callback, Mark)
				Node.Scope.Node = Node

				Node.Link = CreateNode(Scope.Run(Node.Scope, Element.PropMap, Element.ChildMap), Node, Node.Name)

				Node.LastPropMap = Element.PropMap
				Node.LastChildMap = Element.ChildMap
			else
				Node.Link = ReplaceNode(Node.Link, Scope.Run(Node.Scope, Element.PropMap, Element.ChildMap))

				Node.LastPropMap = Element.PropMap
				Node.LastChildMap = Element.ChildMap
			end
		end
	end

	TabOut()

	return Node
end

do
	local function RecursiveDestroyNode(Node: Type.Node, InstanceDestroyed: boolean)
		if Node.Type == "Instance" then
			for _, Child in Node.ChildMap do
				RecursiveDestroyNode(Child, true)
			end

			if not InstanceDestroyed then
				Node.Instance:Destroy()
			end
		elseif Node.Type == "Scope" then
			RecursiveDestroyNode(Node.Link, InstanceDestroyed)

			Scope.End(Node.Scope)
		end
	end

	function DestroyNode(Node: Type.Node)
		Log(`Destroying {Node.Name} and children`)

		RecursiveDestroyNode(Node, false)
	end
end

RunService:BindToRenderStep("EyeScopeUpdate", Enum.RenderPriority.Last.Value, function()
	for Node in UpdateSet do
		ReplaceNode(Node.Link, Scope.Run(Node.Scope, Node.LastPropMap, Node.LastChildMap))
	end

	table.clear(UpdateSet)
end)

return {
	CreateNode = CreateNode,
	ReplaceNode = ReplaceNode,
	DestroyNode = DestroyNode,
}
