using Test

"""Fungsi untuk menghitung persamaan kuadrat ax^2 + bx + c"""
function akar_kuadrat(a, b, c)
    D = b^2 - 4 * a * c
    if D > 0
        x1 = (-b + sqrt(D)) / (2 * a)
        x2 = (-b - sqrt(D)) / (2 * a)
        return x1, x2
    elseif D == 0
        return -b / (2 * a)
    else
        x1 = (-b + sqrt(abs(D))* im) / (2 * a)
        x2 = (-b - sqrt(abs(D))* im) / (2 * a)
        return x1, x2
    end
end

println(akar_kuadrat(1, 3, -4))
println(akar_kuadrat(5, 6, 1))
println(akar_kuadrat(-1, 2, 3))


@test akar_kuadrat(1, 3, -4) == (1.0, -4.0)
@test akar_kuadrat(5, 6, 1) == (-0.2, -1.0)
@test akar_kuadrat(-1, 2, 3) == (-1.0, 3.0)
