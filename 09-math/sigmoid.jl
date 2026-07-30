using Test

"""Fungsi sigmoid adalah fungsi matematika untuk menggambarkan kurva sigmoid """
function sigmoid(x)
    return @. 1 / (1 + exp(-x))
end

println(sigmoid([-1, 1, 2]))
println(sigmoid([0.0]))


@test sigmoid([-1, 1, 2]) == [0.2689414213699951, 0.7310585786300049, 0.8807970779778823]
@test sigmoid([0.0]) == [0.5]
