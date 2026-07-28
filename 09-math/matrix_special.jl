function identiy(n = 2)
    """"""
    res = []
    for i=1:1:n
        row = []
        for j=1:1:n
            if i == j
                push!(row, 1)
            else
                push!(row, 0)
            end
        end
        push!(res, row)
    end
    return res
end

function hankel(A, b = 1)
    """"""
    res = []
    for i=b:A+1
        row = []
        for j=b:A+1
            push!(row, i + j - 1)
        end
        push!(res, row)
    end
    return res
end

function toeplite(A, b=1)
    """"""
    res = []
    for i=b:A+1
        row = []
        for j=b:A+1
            push!(row, i - j)
        end
        push!(res, row)
    end
    return res
end

function hilbert(A, b=1)
    """"""
    res = []
    for i=b:A+1
        row = []
        for j=b:A+1
            push!(row, 1 / (i+j-1))
        end
        push!(res, row)
    end
    return res
end
