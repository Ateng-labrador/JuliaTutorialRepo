# function

function f(x, y)
    z = x^2 + y^2
    return sqrt(z)
end


# sytax reksrusif
# contoh factorial
function factorial(x)
    """
    fungsi untuk menghitung faktorial
    """
    if x <= 1
        return 1
    else
        return x * factorial(x -1)
    end
end

# contoh fibonannci
function fibonannci(x)
    """
    fungsi untuk menghasilkan nilai fobonannci sesuai index
    """
    if x == 0
        return 0
    elseif x == 1
        return 1
    else
        return fibonannci(x-1) + fibonannci(x-2)
    end
end
