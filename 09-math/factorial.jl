function factorial_rekrusi(n)
    if n <= 1
        return 1
    end
    return n* factorial_rekrusi(n-1)
end

function faktorial(n)
    res = 1
    for i=n:-1:1
        res *= i
    end
    return res
end
