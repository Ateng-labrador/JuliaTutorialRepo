function euler_series(x)
    res = 0
    interable = 10
    for i=1:interable
        numerator = x^i
        detector = factorial(i)
        res = res + (numerator / detector)
    end
    return float(res)
end

function sin_series(x)
    res = 0
    interable = 10
    radian = x * pi / 180
    for i=1:interable
        numerator = radian^(2*i) * -1^i
        detector = factorial(2*i)
        res = res + (numerator / detector)
    end
    return float(res)
end


function cos_series(x)
    res = 0
    interable = 10
    radian = x * pi / 180
    for i=1:interable
        numerator = radian^(2*i) * -1^i
        detector = factorial(2*i)
        res = res + (numerator / detector)
    end
    return float(res)
end


println(sin_series(0))
println(cos_series(0))
println(euler_series(1))