# AUTO GENERATED FILE - DO NOT EDIT

cascader <- function(id=NULL, data=NULL, value=NULL, height=NULL, menuHeight=NULL, menuWidth=NULL, preventOverflow=NULL) {
    
    props <- list(id=id, data=data, value=value, height=height, menuHeight=menuHeight, menuWidth=menuWidth, preventOverflow=preventOverflow)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Cascader',
        namespace = 'dash_crafted_components',
        propNames = c('id', 'data', 'value', 'height', 'menuHeight', 'menuWidth', 'preventOverflow'),
        package = 'dashCraftedComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
