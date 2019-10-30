using Documenter, Sim

makedocs(
    modules = [Sim],
    format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true"),
    sitename = "Sim.jl",
    authors  = "Paul Bayer",
    pages = [
        "Home" => "index.md",
        "Overview" => "overview.md",
        "Usage" => "usage.md",
        "Examples" => [
            "Two guys meet" => "examples/greeting.md",
            "Table tennis" => "examples/tabletennis.md",
            "Further examples" => "examples/examples.md"
        ],
        "Internals" => "internals.md"
    ]
)

deploydocs(
    repo   = "github.com/pbayer/Sim.jl.git",
    target = "build",
    deps   = nothing,
    make   = nothing
)