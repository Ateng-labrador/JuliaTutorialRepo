using Test

"""Fungsi untuk menghitung volume kubus"""
function volume_kubus(r)
    return r^3
end

"""Fungsi untuk menghitung volume balok"""
function volume_balok(p, l, t)
    return p * l * t
end

"""Fungsi untuk menghitung volume kerucut"""
function volume_kerucut(a, t)
    return a * t / 3
end


"""Fungsi untuk menghitung kerucut melingkar"""
function volume_kerucut_melingkar(r, t)
    return (1/3) * pi * r^2 * t
end

"""Fungsi untuk menghitung volume prisma"""
function volume_prisma(a, t)
    return float(a * t)
end

"""Fungsi untuk menghitung volume pyramid"""
function volume_pyramid(a, t)
    return a * t / 3
end

"""Fungsi untuk menghitung volume bola"""
function volume_bola(r)
    return (4/3) * pi * r^3
end

"""Fungsi untuk menghitung silinder melingkar"""
function volume_silinder_melingkar(r, t)
    return pi * r^2 * t
end

# test
@test volume_kubus(2) == 8
@test volume_balok(2, 3, 4) == 24
@test volume_kerucut(3, 6) == 6.0
@test volume_kerucut_melingkar(2, 3) ≈ (1/3) * pi * 2^2 * 3
@test volume_prisma(6, 4) == 24.0
@test volume_pyramid(6, 3) == 6.0
@test volume_bola(1) ≈ (4/3) * pi
@test volume_silinder_melingkar(2, 3) ≈ pi * 2^2 * 3
