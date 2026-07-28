using Test

"""Fungsi untuk menghitung faktorial metode rekrusi"""
function factorial_rekrusi(n)
    if n <= 1
        return 1
    end
    return n* factorial_rekrusi(n-1)
end

"""Fungsi untuk menghitung faktorial metode looping"""
function faktorial(n)
    res = 1
    for i=n:-1:1
        res *= i
    end
    return res
end

@test factorial_rekrusi(5) == 120
@test faktorial(5) == 120
