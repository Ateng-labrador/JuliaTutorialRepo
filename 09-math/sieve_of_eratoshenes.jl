using Test

"""Fungsi untuk menghasilkan daftar bilangan prima"""
function prime_sieve(n)
    if n < 2
        return Int[]
    end

    prime = fill(true, n)
    prime[1] = false

    for i in 2:isqrt(n)
        if prime[i]
            for j in (i * i):i:n
                prime[j] = false
            end
        end
    end
    return findall(prime)
end

println(prime_sieve(10))

@test prime_sieve(10) == [2, 3, 5, 7]
