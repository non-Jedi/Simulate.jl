using Documenter, Simulate

makedocs(
    modules = [Simulate],
    format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true"),
    sitename = "Simulate.jl",
    authors  = "Paul Bayer",
    pages = [
        "Home" => "index.md",
        "Approaches" => "approach.md",
        "Overview" => "overview.md",
        "Usage" => "usage.md",
        hide("Examples" => "examples/examples.md",
                       ["examples/greeting.md",
                       "examples/tabletennis.md",
                       "examples/singleserver.md"]),
        "Internals" => "internals.md"
    ]
)

deploydocs(
    repo   = "github.com/pbayer/Simulate.jl.git",
    target = "build",
    deps   = nothing,
    make   = nothing,
    devbranch = "master",
    devurl = "master",
    versions = ["stable" => "v^", "v#.#", "dev" => "master"]
)
