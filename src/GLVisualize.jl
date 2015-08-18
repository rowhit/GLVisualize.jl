__precompile__(true)
module GLVisualize

using GLFW
using GLWindow
using GLAbstraction
using ModernGL
using FixedSizeArrays
using GeometryTypes
using ColorTypes
using Reactive
using Quaternions
using Compat
using FixedPointNumbers
using FileIO
using Meshes
using AbstractGPUArray
using Packing
using FreeTypeAbstraction
#using VideoIO

typealias RGBAU8 RGBA{U8}


import Base: merge, convert, show




include("meshutil.jl")

const sourcedir = Pkg.dir("GLVisualize", "src")
const shaderdir = joinpath(sourcedir, "shader")


include(joinpath(     sourcedir, "utils.jl"))
export y_partition
export x_partition


include(joinpath(     sourcedir, "boundingbox.jl"))
export loop
export bounce

include(joinpath(     sourcedir, "types.jl"))
include_all(joinpath( sourcedir, "display"))


include(joinpath(     sourcedir, 	"visualize_interface.jl"))
export view
export visualize    # Visualize an object
export visualize_default # get the default parameter for a visualization

include(joinpath("texture_atlas", 	"texture_atlas.jl"))
export Sprite
export GLSprite
export SpriteStyle
export GLSpriteStyle

include_all(joinpath( sourcedir, "share"))
include_all(joinpath( sourcedir, "edit"))
include_all(joinpath( sourcedir, "visualize"))
include(joinpath( sourcedir, "visualize", "text", "utils.jl"))

include(joinpath(     sourcedir, "edit_interface.jl"))

export renderloop   # starts the renderloop
export vizzedit         # Edit an object

include(joinpath(sourcedir, "camera.jl"))
export cubecamera



end # module
