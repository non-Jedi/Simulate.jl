#
# This file is part of the Simulate.jl Julia package, MIT license
#
# Paul Bayer, 2019
#
# This is a Julia package for discrete event simulation
#

"""
```
Simulate
```
A Julia package for discrete event simulation.

The current stable, registered version is installed with
```julia
pkg> add Simulate
```

The development version is installed with:
```julia
pkg> add("https://github.com/pbayer/Simulate.jl")
```
"""
module Simulate

"""
    version

Gives the package version:

```jldoctest
julia> using Simulate

julia> Simulate.version
v"0.3.0"
```
"""
const version = v"0.3.0"

using Unitful, Random, DataStructures
import Unitful: FreeUnits, Time
import Base.show

include("components.jl")
include("types.jl")
include("clock.jl")
include("process.jl")
include("utils.jl")
include("logger.jl")


export  Logger, switch!, setup!, init!, record!, clear!,
        Clock, setUnit!, SimExpr, SimFunction, SF, @SF,
        𝐶, Clk, Timing, at, after, every, before, until,
        tau, τ, @tau, sample_time!, event!, sample!, val, @val,
        incr!, run!, stop!, resume!, reset!, sync!,
        SimProcess, SP, @SP, process!, interrupt!, delay!, wait!, now!


Random.seed!(123)
𝐶.state == Undefined() ? init!(𝐶) : nothing

end # module
