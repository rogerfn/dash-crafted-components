# AUTO GENERATED FILE - DO NOT EDIT

export multicascader

"""
    multicascader(;kwargs...)

A MultiCascader component.
Cascader is a component that creates a dropdown select in form of cascade.
It takes a property, `data`
It renders the data and the value selected is returned by the property `value`
Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `data` (Array; required): Data that will be used in the component.
- `value` (Array; optional): The value displayed capture by the component.
- `height` (Real; optional): The height of the Dropdown.
- `menuHeight` (Real; optional): The height of the menu.
- `menuWidth` (Real; optional): The width of the menu.
- `preventOverflow` (Bool; optional): The prevent the overflow  of the menu.
"""
function multicascader(; kwargs...)
        available_props = Symbol[:id, :data, :value, :height, :menuHeight, :menuWidth, :preventOverflow]
        wild_props = Symbol[]
        return Component("multicascader", "MultiCascader", "dash_crafted_components", available_props, wild_props; kwargs...)
end

