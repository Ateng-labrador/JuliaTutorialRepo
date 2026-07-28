using Test

"""Fungsi untuk membuat deret fibonancci"""
function fibonannci_list(n)
    a , b= 0, 1
    res = []
    for i=1:n+1
        push!(res, a)
        a, b = b, a + b
    end
    return res
end

"""Fungsi untuk menentuk angka fibonannci berdasarkan index"""
function fibonannci_rekrusif(n)
    if n == 0
        return 0
    elseif n <= 2
        return 1
    else
        return fibonannci_rekrusif(n - 1) + fibonannci_rekrusif(n - 2)
    end
end

println(fibonannci_list(5))
println(fibonannci_rekrusif(7))

@test fibonannci_list(5) == [0, 1, 1, 2, 3, 5]
@test fibonannci_rekrusif(7) == 13
