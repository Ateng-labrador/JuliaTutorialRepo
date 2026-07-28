using Test

"""Fungsi untuk menghitung permutasi"""
function permutasi(n, r)
    numerator = factorial(big(n))
    detector = factorial(big(n - r))
    return numerator / detector
end


"""Fungsi untuk menghitung combinasi"""
function kombinasi(n, r)
    numerator = factorial(big(n))
    detector = factorial(big(n - r))
    return numerator / factorial(big(r)) * detector
end


println(permutasi(4, 2))
println(kombinasi(4, 2))

@test permutasi(4, 2) == 12
@test kombinasi(4, 2) == 24
