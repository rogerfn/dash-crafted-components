import React, {Component} from 'react';
import PropTypes from 'prop-types';


import '../styles/rsuite.css';
import {MultiCascader as MultiCascaderRsuiteComponent} from 'rsuite';

/**
 * Cascader is a component that creates a dropdown select in form of cascade.
 * It takes a property, `data`
 * It renders the data and the value selected is returned by the property `value`
 */
export default class MultiCascader extends Component {
    render() {
        const {
            id,
            data,
            height,
            menuHeight,
            menuWidth,
            setProps,
            value,
            preventOverflow
        } = this.props;

        return (
            <div id={id}>
                <MultiCascaderRsuiteComponent
                    data={data}
                    value={value}
                    height={height}
                    menuWidth={menuWidth}
                    menuHeight={menuHeight}
                    preventOverflow={preventOverflow}
                    onChange={(value) => setProps({value})}
                />
            </div>
        );
    }
}

MultiCascader.defaultProps = {
    value: [],
    menuHeight: 200,
    menuWidth: 156,
    height: 320,
    preventOverflow:true
};

MultiCascader.propTypes = {
    /**
     * The ID used to identify this component in Dash callbacks.
     */
    id: PropTypes.string,

    /**
     * Data that will be used in the component.
     */
    data: PropTypes.array.isRequired,

    /**
     * The value displayed capture by the component.
     */
    value: PropTypes.array,

    /**
     * The height of the Dropdown.
     */
    height: PropTypes.number,
    /**
     * The height of the menu.
     */
    menuHeight: PropTypes.number,

    /**
     * The width of the menu.
     */
    menuWidth: PropTypes.number,


    
    /**
     * The prevent the overflow  of the menu.
     */
    preventOverflow: PropTypes.bool,
    /**
     * Dash-assigned callback that should be called to report property changes
     * to Dash, to make them available for callbacks.
     */
    setProps: PropTypes.func,
};
