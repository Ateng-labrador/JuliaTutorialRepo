using Test

"""Fungsi untuk menghitung convolution"""
function simple_convolution(f, g)
    m, n = length(f), length(g)
    res = zeros(m + n - 1)
    for i=1:m
        for j=1:n
            res[i + j - 1] += f[i] * g[j]
        end
    end
    return res
end


@test simple_convolution([1, 2, 3], [4, 5, 6]) == [4.0, 13.0, 28.0, 27.0, 18.0]
