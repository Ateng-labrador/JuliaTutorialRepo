using Test

"""Fungsi untuk membuat list angka taxicab"""
function taxi_cab(x)
    dict_sum_pairs = Dict()
    raman = Set()
    for a=1:x
        for b=a+1:x
            sum_pairs = a^3 + b^3
            if !haskey(dict_sum_pairs, sum_pairs)
                dict_sum_pairs[sum_pairs] = (a, b)
            else
                push!(raman, sum_pairs)
            end
        end
    end
    return sort(collect(raman))
end

@testset "taxicab" begin
    @test taxi_cab(10) == []
    @test taxi_cab(20) == [1729, 4104]
    @test taxi_cab(30) == [1729, 4104, 13832, 20683]
end
