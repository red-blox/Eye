local net = require("@lune/net")

local API_DUMP_URL = "https://raw.githubusercontent.com/CloneTrooper1019/Roblox-Client-Tracker/roblox/API-Dump.json"

export type SecurityLevel = "None" | "LocalUserSecurity" | "PluginSecurity" | "RobloxScriptSecurity" | "RobloxSecurity"

export type ClassMemberTag =
	"ReadOnly"
	| "NotReplicated"
	| "Hidden"
	| "Deprecated"
	| "NotBrowsable"
	| "CustomLuaState"
	| "CanYield"
	| "NotScriptable"
	| "Yields"
	| "NoYield"

export type ClassMemberBase = {
	Name: string,
	Category: string,

	Serialization: {
		CanLoad: boolean,
		CanSave: boolean,
	},

	Tags: { ClassMemberTag }?,
}

export type ClassMemberProperty = ClassMemberBase & {
	MemberType: "Property",

	ThreadSafety: "Unsafe" | "ReadSafe",

	ValueType: {
		Category: string,
		Name: string,
	},

	Security: {
		Read: SecurityLevel,
		Write: SecurityLevel,
	},
}

export type ClassMemberFunction = ClassMemberBase & {
	MemberType: "Function",

	ThreadSafety: "Unsafe" | "Safe",

	Parameters: {
		{
			Name: string,
			Default: string?,
			Type: {
				Category: string,
				Name: string,
			},
		}
	},

	ReturnType: {
		Category: string,
		Name: string,
	},

	Security: SecurityLevel,
}

export type ClassMemberEvent = ClassMemberBase & {
	MemberType: "Event",

	ThreadSafety: "Unsafe" | "Safe",

	Parameters: {
		{
			Name: string,
			Type: {
				Category: string,
				Name: string,
			},
		}
	},

	Security: SecurityLevel,
}

export type ClassMember = ClassMemberEvent | ClassMemberFunction | ClassMemberProperty

export type ClassTag =
	"NotCreatable"
	| "NotBrowsable"
	| "Deprecated"
	| "Service"
	| "NotReplicated"
	| "PlayerReplicated"
	| "Settings"
	| "UserSettings"

export type Class = {
	Name: string,
	MemoryCategory: string,
	Superclass: string,

	Tags: { ClassTag }?,

	Members: { ClassMember },
}

export type EnumItem = {
	Name: string,
	Value: number,
}

export type Enum = {
	Items: { EnumItem },
	Name: string,
}

local ApiDump: {
	Classes: { Class },
	Enums: { Enum },
	Version: number,
}

do
	local Response = net.request(API_DUMP_URL)

	ApiDump = net.jsonDecode(Response.body)
end

local ClassMap: { [string]: Class } = {}
local EnumMap: { [string]: { EnumItem } } = {}

for _, Class in ApiDump.Classes do
	ClassMap[Class.Name] = Class
end

for _, Enum in ApiDump.Enums do
	EnumMap[Enum.Name] = Enum.Items
end

local function Class_InheritanceList(Class: Class)
	local InheritanceList = {}

	while true do
		local Found = ClassMap[Class.Superclass]

		if Found then
			table.insert(InheritanceList, Found)
		else
			break
		end
	end

	return InheritanceList
end

local function Class_HasTag(Class: Class, Tag: ClassTag)
	return Class.Tags and table.find(Class.Tags, Tag)
end

local function Class_HasAnyTag(Class: Class, Tags: { ClassTag })
	if Class.Tags == nil then
		return false
	end

	for _, Tag in Tags do
		if table.find(Class.Tags, Tag) then
			return true
		end
	end

	return false
end

local function MemberList_Events(MemberList: { ClassMember })
	local EventList = {}

	for _, Member in MemberList do
		if Member.MemberType == "Event" then
			table.insert(EventList, Member)
		end
	end

	return EventList
end

local function MemberList_Functions(MemberList: { ClassMember })
	local FunctionList = {}

	for _, Member in MemberList do
		if Member.MemberType == "Function" then
			table.insert(FunctionList, Member)
		end
	end

	return FunctionList
end

local function MemberList_Properties(MemberList: { ClassMember })
	local PropertyList = {}

	for _, Member in MemberList do
		if Member.MemberType == "Property" then
			table.insert(PropertyList, Member)
		end
	end

	return PropertyList
end

local function Type_ResolveLuauType(Type: { Category: string, Name: string })
	if Type.Category == "Enum" then
		return `Enum.{Type.Name}`
	else
		local Name = Type.Name

		if Name == "bool" then
			return "boolean"
		elseif Name == "double" then
			return "number"
		elseif Name == "float" then
			return "number"
		elseif Name == "int" then
			return "number"
		elseif Name == "int64" then
			return "number"
		elseif Name == "Content" then
			return "string"
		elseif Name == "ProtectedString" then
			return "string"
		elseif Name == "BinaryString" then
			return "string"
		elseif Name == "Tuple" then
			return "any"
		elseif Name == "Variant" then
			return "any"
		elseif Name == "CoordinateFrame" then
			return "CFrame"
		elseif Name == "OptionalCoordinateFrame" then
			return "CFrame?"
		elseif Name == "Array" then
			return "{ any }"
		elseif Name == "Dictionary" then
			return "{ [any]: any }"
		else
			return Name
		end
	end
end

return {
	ClassList = ApiDump.Classes,
	EnumList = ApiDump.Enums,

	ClassMap = ClassMap,
	EnumMap = EnumMap,

	Class_InheritanceList = Class_InheritanceList,
	Class_HasTag = Class_HasTag,
	Class_HasAnyTag = Class_HasAnyTag,

	MemberList_Events = MemberList_Events,
	MemberList_Functions = MemberList_Functions,
	MemberList_Properties = MemberList_Properties,

	Type_ResolveLuauType = Type_ResolveLuauType,
}
