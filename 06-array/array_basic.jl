# Array dalam julia bisa dibuat menjadi tiga tipe 1D, 2D, 3D

# vector 1D
A = [1, 2, 3, 4]

# vector 2D
B = [1 2; 3 4]

# vector 3D
C = cat([1 2; 3 4], [5 6; 7 8], dims=3)
# cat (concatenate) adalah fungsi untuk menghubungkan dua atau lebih array
# menjadi satu array besar
