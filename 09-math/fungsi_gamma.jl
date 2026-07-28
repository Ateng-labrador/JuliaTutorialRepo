using Test

"""Fungsi untuk menghitung fungsi gamma"""
function fungsi_gamma(n)
    if n ≈ 0.5
        return sqrt(π)
    elseif n == 0
        return 1.0
    elseif  n == 1
        return 1.0
    else
        return (n - 1) * fungsi_gamma(n - 1)
    end
end


println(fungsi_gamma(0))
println(fungsi_gamma(3.5))
println(fungsi_gamma(0.5))


@test fungsi_gamma(0) == 1.0
@test fungsi_gamma(3.5) == 3.3233509704478426
@test fungsi_gamma(0.5) == 1.7724538509055159
