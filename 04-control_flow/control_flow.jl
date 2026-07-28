# penggunaan if-elseif-else

x = 5
y = 6

# if x < y
#     println("x kurang dari y")
# elseif x > y
#     println("x lebih besar dari y")
# else
#     println("x dan y sama besar")
# end


# Looping
# perulangan dalam julia menciptakan scope baru (local scope)

# penggunaan while
k = 0;
i = 1
while i <= 5
    global i += 1
    global k += 1
end


# penggunaan for
# awal:step:akhir
for i = 1:1:5
    println(i)
end

# contoh penggunaan for
# mencari bilangan genap
for i = 1:20
    if i % 2 == 0
        println(i)
    end
end

# contoh penggunaan while
# menjadi bilangan ganjil
idx = 1
while idx <= 20
    if idx % 2 != 0
        println(idx)
    end
    global idx += 1
end
