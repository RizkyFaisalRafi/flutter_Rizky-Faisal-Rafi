# Resume Section 28 UI Testing

> Pengertian UI Testing
- Pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respond kepada pengguna
- UI Testing di Flutter disebut juga widget testing sehingga pengujian dilakukan pada widgets dengan menuliskan script yang dapat dijalankan secara otomatis

> Keuntungan UI Testing
- Memastikan seluruh widget memberi tampilan yang sesuai
- Memastikan seluruh interaksi dapat diterima dengan baik
- Menjadi ketentuan yang harus diikuti saat diperlukan perubahan widget

> Melakukan UI Testing
- Intalasi package Testing pada umumnya sudah terinstall sejak prject project pertama kali dibuat, yaitu bagian dev_dpendencies yang flutter_test:  sdk: flutter
- Penulisan script testing dilakukan pada folder test
- nama file harus diikuti _test.dart, contoh contact_test.dart.

> Penulisan Script Testing
- Tiap file berisi fungsi main() yang didalamnya dapat dituliskan script testing
- Tiap skenario pengujian disebut test case

> Script Test
- Test Case diawali dengan testWidgets dan diberi judul
- Simulasi proses mengaktifkan halaman AboutScreen
- Memeriksa apakah di halaman tersebut terdapat teks "AboutScreen"

> Menjalankan Testing
- Perintah flutter test akan menjalankan seluruh file test yang dibuat
- Hasil dari perintah ini adalah lamanya waktu pengujian, total pengujian yang dilakukan, dan pesan bahwa pengujian berhasil