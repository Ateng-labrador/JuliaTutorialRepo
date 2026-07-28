using Test

"""Fungsi untuk menghitung deret geometri"""
function geoSum(a, r, n)
    if r == 0
        return "Suku pertama tidak boleh sama dengan nol"
    elseif r == 1
        return "Rasio tidak boleh sama dengan 1"
    else
        return (a * (1 - r^(n))) / (1 - r)
    end
end


println(geoSum(2, 2, 3))

@test geoSum(2, 2, 3) == 14.0