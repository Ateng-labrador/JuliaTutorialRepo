using Test
# https://en.wikipedia.org/wiki/Happy_number

function menjumlahkan_digit(n)
    res = 0
    while n > 0
        dgt = n % 10
        res += dgt * dgt
        n = n ÷ 10
    end
    return res
end


function happy_or_sad(angka)
    set_value = Set()
    happy, sad = "happy number", "sad number"
    while true
        if angka == 1
            return happy
        end
        angka = menjumlahkan_digit(angka)
        if angka in set_value
            return sad
        end
        push!(set_value, angka)
    end
end


@test menjumlahkan_digit(23) == 13
@test menjumlahkan_digit(111) == 3
@test menjumlahkan_digit(19) == 82
@test happy_or_sad(23) == "happy number"
@test happy_or_sad(8) == "sad number"
@test happy_or_sad(1) == "happy number"
