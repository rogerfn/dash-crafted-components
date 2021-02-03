
module DashCraftedComponents
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("cascader.jl")
include("multicascader.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "dash_crafted_components",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "dash_crafted_components.min.js",
    external_url = "https://unpkg.com/dash_crafted_components@0.0.1/dash_crafted_components/dash_crafted_components.min.js",
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "dash_crafted_components.min.js.map",
    external_url = "https://unpkg.com/dash_crafted_components@0.0.1/dash_crafted_components/dash_crafted_components.min.js.map",
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
