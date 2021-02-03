# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class Cascader(Component):
    """A Cascader component.
Cascader is a component that creates a dropdown select in form of cascade.
It takes a property, `data`
It renders the data and the value selected is returned by the property `value`

Keyword arguments:
- id (string; optional): The ID used to identify this component in Dash callbacks.
- data (list; required): Data that will be used in the component.
- value (string; default ''): The value displayed capture by the component.
- height (number; default 320): The height of the Dropdown.
- menuHeight (number; default 200): The height of the menu.
- menuWidth (number; default 156): The width of the menu.
- preventOverflow (boolean; default True): The prevent the overflow  of the menu."""
    @_explicitize_args
    def __init__(self, id=Component.UNDEFINED, data=Component.REQUIRED, value=Component.UNDEFINED, height=Component.UNDEFINED, menuHeight=Component.UNDEFINED, menuWidth=Component.UNDEFINED, preventOverflow=Component.UNDEFINED, **kwargs):
        self._prop_names = ['id', 'data', 'value', 'height', 'menuHeight', 'menuWidth', 'preventOverflow']
        self._type = 'Cascader'
        self._namespace = 'dash_crafted_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'data', 'value', 'height', 'menuHeight', 'menuWidth', 'preventOverflow']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['data']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(Cascader, self).__init__(**args)
