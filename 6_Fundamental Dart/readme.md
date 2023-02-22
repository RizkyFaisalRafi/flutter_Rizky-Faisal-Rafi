# Resume Section 6 Fundamental Dart
# Video - Basic Dart Programming
<hr></hr>

> Apa dan mengapa Dart?

- Dart adalah Bahasa Pemrograman Open Source yang dirancang untuk membuat aplikasi agar dapat berjalan dengan cepat, Dart dikembangkan oleh Google.
- Aplikasi yang dibuat dengan Dart adalah aplikasi yang berjalan disisi client (Front End), seperti Web, Desktop dan Mobile.
- Tujuan awal dibuatnya dart yaitu mrenggantikan Javascript karena dinilai banyak kelemahan dan dart makin populer semenjak munculnya Framework Flutter.

Kenapa Harus Dart?
1. Type Safe
    - Menjamin konsistensi tipe data

2. Null Safety
    - Memberi Keamanan dari data bernilai hampa (Null)

3. Rich Standard Library
    - Hadir dengan banyak dukungan library internal

4. Multiplatform
    - Mampu berjalan di berbagai jenis perangkat

> Fungsi Main

- Bagian yang dijalankan pertama kali.
- Dapat memiliki tipe data void atau int.
- Memiliki nama main.

![carbon (2)](https://user-images.githubusercontent.com/87520408/220566708-5de7357c-1eca-48e4-94e6-603b0f5f1448.png)


> Komentar

- Komentar adalah baris kode yang tidak dijalankan oelh program
- Kegunaan komentar yaitu Memberi catatan / dokumentasi pada kode agar mudah terbaca dan mencegah perintah dijalankan
- Komentar ada Single Line Comment (//) dan MultiLine Comment (/* */). 

> Variabel

- Digunakan untuk meyimpan data
- Memiliki nama dan memiliki Tipe Data
- Contoh deklarasi variabel: int Score; || var usia;
- Contoh menginisiasikan variabel: 
    - var usia;
    - usia = 18;

> Tipe Data

- Bahsa Dart merupakan Staticaly Type
- Tipe data pada dart ada integer (Bilangan Bulat), double (Bilangan Desimal/Pecahan), boolean, num, String
- Perbedaan final dengan const:
    - Keyword final digunakan agar variabel tidak bisa dideklarasikan ulang, namun nilai dari variabelnya sendiri bisa diubah
    - Keyword const digunakan untuk menjadikan variabel dan nilainya menjadi immutable (tidak bisa diubah sama sekali)

> Operator

- Digunakan untuk operasi pengolahan data
- Data yang dikelola disebut operand
- Operator Assignemnt(=, +=, -=, *=, /=, %=), Comparison/perbandingan(==, <, >, <=, >=), Logika(&&, ||, !),  
- Selengkapnya Kode Program [KLIK DISINI](https://github.com/RizkyFaisalRafi/belajar_dart_dasar/tree/master/bin)