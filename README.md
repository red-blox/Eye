# Eye

Eye is a declarative interface library for Roblox.

## Usage

Eye is very react-like and includes functional components, hooks, and a virtual DOM.

### Basic Counter Component

```lua
local Counter = Eye.Component(function(Props, Children)
	local Count, SetCount = Eye.useState(0)

	return Eye.New.TextButton({
		AnchorPoint = Props.AnchorPoint,
		Position = Props.Position,
		Size = Props.Size,

		Text = tostring(Count),

		["@Activated"] = function()
			SetCount(Count + 1)
		end,
	})
end)
```

## Types

Eye is strictly typed, everything (except using instances) in Eye has full typings - including creating instances. As seen in the above counter example, `Eye.New` contains a function to create every instance type with full types for properties, events, and property listeners.

## Installation

Eye can be installed using wally. Add Eye to your `wally.toml`:

```toml
[dependencies]
Eye = "red-blox/eye"
```

Run `wally install` to install all dependencies into the `Packages` directory.

## Documentation

Eye currently has no documentation.

## License

Eye is Licensed under the MIT License. See [LICENSE](LICENSE) for details.
