using Test

"""Fungsi untuk membuat matriks identitias"""
function identiy(n = 2)
    res = []
    for i=1:1:n
        row = []
        for j=1:1:n
            if i == j
                push!(row, 1)
            else
                push!(row, 0)
            end
        end
        push!(res, row)
    end
    return res
end

"""Fungsi untuk membuat matriks hankel"""
function hankel(A, b = 1)
    res = []
    for i=b:A
        row = []
        for j=b:A
            push!(row, i + j - 1)
        end
        push!(res, row)
    end
    return res
end

"""Fungsi untuk membuat matriks toeplite"""
function toeplite(A, b=1)
    res = []
    for i=b:A
        row = []
        for j=b:A
            push!(row, i - j)
        end
        push!(res, row)
    end
    return res
end

"""Fungsi untuk membuat matriks hilbert"""
function hilbert(A, b=1)
    res = []
    for i=b:A
        row = []
        for j=b:A
            push!(row, 1 / (i+j-1))
        end
        push!(res, row)
    end
    return res
end


println(identiy(3))
println(hankel(3))
println(toeplite(3))
println(hilbert(2))

@test identiy(3) == [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
@test hankel(3) == [[1, 2, 3], [2, 3, 4], [3, 4, 5]]
@test toeplite(3) == [[0, -1, -2], [1, 0, -1], [2, 1, 0]]
@test hilbert(2) == [[1.0, 0.5], [0.5, 0.3333333333333333]]
