module Maxnet

import Tables, Lasso, GLMNet, Interpolations, CategoricalArrays, GLM, SparseArrays
import StatsAPI, StatsBase, Statistics
import MLJModelInterface as MMI

using GLM: IdentityLink, CloglogLink, LogitLink
using MLJModelInterface: Continuous, Binary, Multiclass, Count

export IdentityLink, CloglogLink, LogitLink # re-export relevant links
export LassoBackend, GLMNetBackend
export maxnet, predict
export LinearFeature, CategoricalFeature, QuadraticFeature, ProductFeature, ThresholdFeature, HingeFeature

# Write your package code here.

include("utils.jl")
include("lasso.jl")
include("feature_classes.jl")
include("model_matrix.jl")
include("regularization.jl")
include("maxnet_function.jl")
include("predict.jl")
include("response_curves.jl")
include("data.jl")
include("mlj_interface.jl")

end