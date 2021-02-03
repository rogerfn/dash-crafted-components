import dash_crafted_components
import dash
from dash.dependencies import Input, Output
import dash_html_components as html
from data_examples import data_cities
app = dash.Dash(__name__)

app.layout = html.Div([
    dash_crafted_components.Cascader(
        id='input',
        value='',
        menuWidth=400,

        data=data_cities
    ),
    html.Div(id='output'),
    dash_crafted_components.MultiCascader(
        id='input2',
        # value=[],
        menuWidth=400,
        data=data_cities,
    ),
    html.Div(id='output2')
])


@app.callback(Output('output', 'children'), [Input('input', 'value')])
def display_output(value):
    return 'You have entered {}'.format(value)


@app.callback(Output('output2', 'children'), [Input('input2', 'value')])
def display_output2(value):
    return 'You have entered {}'.format(value)


if __name__ == '__main__':
    app.run_server(debug=True)
