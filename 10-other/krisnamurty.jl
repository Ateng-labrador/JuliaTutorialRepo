using Test

"""Fungsi untuk mengecek apakah krisnamurty atau buka"""
function krisnamurty(n::Integer)
    error = "Masukkan Angka dengan benar"
    benar, bukan = "Angka Krisnamurty", "Bukan Angka Krisnamurty"
    if n < 0
        return error
    else
        original_n = n
        res = 0
        while n > 0
            dgt = n % 10
            res += factorial(dgt)
            n = n ÷ 10
        end
        if res == original_n
            return benar
        else
            return bukan
        end
    end
end

@testset "krisnamurty" begin
    @test krisnamurty(145) == "Angka Krisnamurty"
    @test krisnamurty(1) == "Angka Krisnamurty"
    @test krisnamurty(123) == "Bukan Angka Krisnamurty"
end
