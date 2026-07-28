using Test

"""
Fungsi untuk menghitung deret taylor euler
"""
function euler_series(x)
    res = 0.0
    iterable = 10
    for i in 1:iterable
        numerator = x^i
        detector = factorial(big(i))
        res += numerator / detector
    end
    return float(res)
end

"""
Fungsi untuk menghitung deret taylor sin
"""
function sin_series(x)
    res = 0.0
    iterable = 10
    radian = deg2rad(x)
    for i in 0:iterable
        numerator = radian^(1 + 2*i) * ((-1)^i)
        detector = factorial(big(1 + 2*i))
        res += numerator / detector
    end
    return float(res)
end

"""
Fungsi untuk menghitung deret taylor cos
"""
function cos_series(x)
    res = 0.0
    iterable = 10
    radian = deg2rad(x)
    for i in 0:iterable
        numerator = radian^(2*i) * ((-1)^i)
        detector = factorial(big(2*i))
        res += numerator / detector
    end
    return float(res)
end

"""
Fungsi untuk menghitung deret geo 1 / (1 - x)
"""
function geo_series(x)
    res = 0.0
    iterable = 10
    for i in 0:iterable
        numerator = x^i
        res += numerator
    end
    return float(res)
end

"""
Fungsi untuk menghitung deret taylor ln
Dengan batas -1 < x <= 1.
"""
function ln_series(x)
    if -1 < x <= 1
        res = 0.0
        iterable = 10
        for i in 1:iterable+1
            numerator = (x^i) * ((-1)^(i + 1))
            detector = i
            res += numerator / detector
        end
        return float(res)
    else
        error("x harus berada di rentang -1 < x <= 1")
    end
end

println(sin_series(45))
println(cos_series(45))
println(euler_series(1))
println(ln_series(0.5))

# test
@test sin_series(45) ≈ 0.7071067811865475 atol=1e-5
@test cos_series(45) ≈ 0.7071067811865475 atol=1e-5
@test euler_series(1) ≈ 1.718281801146384 atol=1e-5
@test ln_series(0.5) ≈ 0.4054790370220058 atol=1e-5