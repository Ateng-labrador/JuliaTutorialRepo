using Test

function pangkat_iterasi(n, x)
    res = 1
    for i=1:x
        res *= n
    end
    return res
end

println(pangkat_iterasi(2, 5))

@test pangkat_iterasi(2, 5) == 32
@test pangkat_iterasi(100, 0) == 1
@test pangkat_iterasi(0, 100) == 0
@test pangkat_iterasi(1, 100) == 1