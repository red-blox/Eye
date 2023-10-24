local ApiDump = require("ApiDump")
local fs = require("@lune/fs")

local Out = ""
local SkippedSet: { [string]: boolean } = {}

Out ..= "local Type=require(script.Parent.Type)"
Out ..= "type Prop<T> =T?"
Out ..= "type e=Type.Element "
Out ..= "local Export={}"

local function OutputClass(Class: ApiDump.Class, OutputConstructor: boolean)
	if SkippedSet[Class.Superclass] then
		SkippedSet[Class.Superclass] = nil
		OutputClass(ApiDump.ClassMap[Class.Superclass], false)
	end

	Out ..= `export type {Class.Name}_PropMap={if Class.Superclass ~= "<<<ROOT>>>" then `{Class.Superclass}_PropMap&` else ""}\{`

	for _, Member in Class.Members do
		if
			Member.Tags
			and (table.find(Member.Tags :: any, "Deprecated") or table.find(Member.Tags :: any, "NotScriptable"))
		then
			continue
		end

		if Member.MemberType == "Property" then
			if not Member.Tags or not table.find(Member.Tags :: any, "ReadOnly") then
				Out ..= `["{Member.Name}"]:Prop<{ApiDump.Type_ResolveLuauType(Member.ValueType)}>,`
			end

			Out ..= `["${Member.Name}"]:(({ApiDump.Type_ResolveLuauType(Member.ValueType)})->())?,`
		elseif Member.MemberType == "Event" then
			local ParamOut = ""

			for _, Param in Member.Parameters do
				ParamOut ..= `{Param.Name}:{ApiDump.Type_ResolveLuauType(Param.Type)}, `
			end

			if #ParamOut > 0 then
				ParamOut = string.sub(ParamOut, 1, -3)
			end

			Out ..= `["@{Member.Name}"]:(({ParamOut})->())?,`
		end
	end

	Out ..= "}"

	if OutputConstructor then
		Out ..= `Export.{Class.Name}=function(Props:{Class.Name}_PropMap,Children:\{[string]:e}?):e `
		Out ..= `return\{`
		Out ..= `Type="Create"::"Create",`
		Out ..= `ClassName="{Class.Name}",`
		Out ..= `PropMap=Props,`
		Out ..= `ChildMap=Children or\{},`
		Out ..= "}"
		Out ..= "end "
	end
end

for _, Class in ApiDump.ClassList do
	if ApiDump.Class_HasAnyTag(Class, { "Deprecated", "NotCreatable" }) then
		SkippedSet[Class.Name] = true
	else
		OutputClass(Class, true)
	end
end

Out ..= "return Export"

if fs.readFile("lib/New.luau") ~= Out then
	fs.writeFile("lib/New.luau", Out)
end
