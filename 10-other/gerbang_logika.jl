using Test
# https://en.wikipedia.org/wiki/Logic_gate

function gerbang_buffer(A)
    if A == 0
        return 0
    elseif A == 1
        return 1
    else
        return "hanya menerima angka 1 dan 0"
    end
end


function gerbang_not(A)
    if A == 0
        return 1
    elseif A == 1
        return 0
    else
        return "hanya menerima angka 1 dan 0"
    end
end


function gerbang_and(A, B)
    if A == 0 && B == 0
        return 0
    elseif A == 0 && B == 1
        return 0
    elseif A == 1 && B == 0
        return 0
    elseif A == 1 && B == 1
        return 1
    else
        return "angka hanya menerima angka 1 dan 0"
    end
end


function gerbang_or(A, B)
    if A == 0 && B == 0
        return 0
    elseif A == 0 && B == 1
        return 1
    elseif A == 1 && B == 0
        return 1
    elseif A == 1 && B == 1
        return 1
    else
        return "angka hanya menerima angka 1 dan 0"
    end
end


function gerbang_nand(A, B)
    if A == 0 && B == 0
        return 1
    elseif A == 0 && B == 1
        return 1
    elseif A == 1 && B == 0
        return 1
    elseif A == 1 && B == 1
        return 0
    else
        return "angka hanya menerima angka 1 dan 0"
    end
end


function gerbang_nor(A, B)
    if A == 0 && B == 0
        return 1
    elseif A == 0 && B == 1
        return 0
    elseif A == 1 && B == 0
        return 0
    elseif A == 1 && B == 1
        return 0
    else
        return "angka hanya menerima angka 1 dan 0"
    end
end


function gerbang_xor(A, B)
    if A == 0 && B == 0
        return 0
    elseif A == 0 && B == 1
        return 1
    elseif A == 1 && B == 0
        return 1
    elseif A == 1 && B == 1
        return 0
    else
        return "angka hanya menerima angka 1 dan 0"
    end
end


function gerbang_xnor(A, B)
    if A == 0 && B == 0
        return 1
    elseif A == 0 && B == 1
        return 0
    elseif  A == 1 && B == 0
        return 0
    elseif A == 1 && B == 1
        return 1
    else
        return "angka hanya menerima angka 1 dan 0"
    end
end

@testset "Gerbang logika" begin
    @test gerbang_buffer(0) == 0
    @test gerbang_buffer(1) == 1
    @test gerbang_buffer(2) == "hanya menerima angka 1 dan 0"
 
    @test gerbang_not(0) == 1
    @test gerbang_not(1) == 0
    @test gerbang_not(2) == "hanya menerima angka 1 dan 0"

    @test gerbang_and(0, 0) == 0
    @test gerbang_and(0, 1) == 0
    @test gerbang_and(1, 0) == 0
    @test gerbang_and(1, 1) == 1
    @test gerbang_and(2, 1) == "angka hanya menerima angka 1 dan 0"

    @test gerbang_or(0, 0) == 0
    @test gerbang_or(0, 1) == 1
    @test gerbang_or(1, 0) == 1
    @test gerbang_or(1, 1) == 1
    @test gerbang_or(2, 1) == "angka hanya menerima angka 1 dan 0"

    @test gerbang_nand(0, 0) == 1
    @test gerbang_nand(0, 1) == 1
    @test gerbang_nand(1, 0) == 1
    @test gerbang_nand(1, 1) == 0

    @test gerbang_nor(0, 0) == 1
    @test gerbang_nor(0, 1) == 0
    @test gerbang_nor(1, 0) == 0
    @test gerbang_nor(1, 1) == 0

    @test gerbang_xor(0, 0) == 0
    @test gerbang_xor(0, 1) == 1
    @test gerbang_xor(1, 0) == 1
    @test gerbang_xor(1, 1) == 0

    @test gerbang_xnor(0, 0) == 1
    @test gerbang_xnor(0, 1) == 0
    @test gerbang_xnor(1, 0) == 0
    @test gerbang_xnor(1, 1) == 1
end
