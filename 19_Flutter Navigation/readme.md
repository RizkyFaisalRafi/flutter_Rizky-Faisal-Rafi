# Resume Section 19 Flutter Navigation

> Apa itu Navigation
- Berpindah dari halaman satu ke halaman lain

> Navigation Dasar
- Navigator.push = untuk berpindah ke halaman lain selanjutnya
- Navigator.pop = untuk kembali ke halaman sebelumnya

> Navigation dengan Named Routes
- Navigation dengan Named Routes, tiap halaman memiliki alamat yang disebut route, perpindahan halamannya menggunakan Navigator.pushNamed(NamaRoutenya)
- Harus juga mendaftarkan Route di main.dart apabila ingin menggunakan navigasi jenis pushNamed
- Tambahkan initialRoute dan Routes pada MaterialApp
- Tiap Route adalah fungsi yang membentuk halaman