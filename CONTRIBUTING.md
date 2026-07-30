# *Contributing Julia*

Kami sangat berterima kasih atas kontribusi anda kedalam repo kamu
ikuti paduan dibawah ini dalam melakukan kontribusi

**Penggunaan *docstring***

Penggunaan *docstring* bertujuan untuk memudahkan pembaca mudah dalam
mengimplementasikan algoritma.

contoh *docstring*

```jl
"""Fungsi untuk menjumlahkan dua bilangan"""
function jumlah(x, y)

end
```

**Testing**

Lakukan testing lokal dengan menggunakan ``Using test``

contoh

```jl
using Test

"""Fungsi untuk menjumlahkan dua bilangan"""
function jumlah(x, y)
    return x + y
end

@testset "jumlah" begin
    @test jumlah(5, 5) == 10
    @test jumlah(3, 5) == 8
end
```

lakukan running lokal

**Saran pesan commit**
- `feat:` untuk menambah algoritma atau tambahan lainnya;
- `fix:` untuk mengubah algoritma yang sudah ada atau memperbaiki;
- `docs:` untuk mengubah atau membuat dokumentasi;
- `add:` untuk menambah algoritma atau tambahan lainnya (opsional);

# Pull Request

- Lakukan *fork* pada repository ini, setelah itu anda bebas mengubah atau menambahkan algoritma.
- Buat *locak branch* baru untuk menambahkan algoritma baru.
- Lakukan tes dengan menggunakan ``using Test`` secara lokal.
```bash
git checkout -b <branch_name>
git add . # atau git add nama_perubahan.jl
git commit -m "feat: menambahkan algoritma baru"
```

- lakukan *push* ke *branch* kamu dan kemudian *open pull request*.
