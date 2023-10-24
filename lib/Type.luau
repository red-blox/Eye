-- Element

type BaseElement = {
	PropMap: { [string]: any },
	ChildMap: { [string]: Element },
}

export type CreateElement = BaseElement & {
	Type: "Create",

	ClassName: string,
}

export type UseRootElement = BaseElement & {
	Type: "UseRoot",

	Default: Instance,
}

export type UseChildElement = BaseElement & {
	Type: "UseChild",

	Default: Instance?,
}

export type ScopeElement = BaseElement & {
	Type: "Scope",

	Callback: (PropMap: { [string]: any }, ChildMap: { [string]: Element }) -> Element,
}

export type Element = CreateElement | UseRootElement | UseChildElement | ScopeElement

-- Node

type BaseNode = {
	Parent: ParentNode,
	Name: string,
}

export type InstanceNode = BaseNode & {
	Type: "Instance",

	Instance: Instance,
	Default: Instance?,

	PropMap: { [string]: any },
	ChildMap: { [string]: Node },
	ConnectionMap: { [string]: RBXScriptConnection },
}

export type ScopeNode = BaseNode & {
	Type: "Scope",

	Scope: Scope,
	Link: Node,

	LastPropMap: { [string]: any },
	LastChildMap: { [string]: Element },
}

export type HostNode = {
	Type: "Host",

	Instance: Instance,
}

export type Node = InstanceNode | ScopeNode
export type ParentNode = HostNode | InstanceNode | ScopeNode

-- Scope

export type ScopeState = {
	Type: "State",

	Value: any,
}

export type ScopeEffect = {
	Type: "Effect",

	DepList: { any },
	Cleanup: (() -> ())?,
}

export type ScopeComputed = {
	Type: "Computed",

	DepList: { any },
	RetList: { any },
}

export type ScopeValue = ScopeState | ScopeEffect | ScopeComputed

export type Scope = {
	Stack: { ScopeValue },
	Index: number,
	First: boolean,

	Node: ScopeNode?,

	Callback: (PropMap: { [string]: any }, ChildMap: { [string]: Element }) -> Element,
	Mark: (self: ScopeNode?) -> (),
}

-- Misc

export type Value<T> = {
	DepSet: { [Scope]: boolean },
	Current: T,

	Set: (Update: T | (T) -> T, Force: boolean) -> (),
}

return {}
