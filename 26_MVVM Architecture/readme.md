# Resume Section 26 MVVM Architecture

> Apa itu MVVM Architecture
- MVVM adalah singkatan dari Model View ViewModel yaitu Memisahkan Logic dengan tampilan UI(View) kedalam ViewModel

> Keuntungan yang didapat
- (Reusability) yaitu Jika ada beberapa tampilan yang memerlukan alur logic yang sama, mereka bisa menggunakan ViewModel yang sama.
- (Maintainability) yaitu mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama Logic.
- (Testability) yaitu pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan produktivitas pada pengujian.

> Melakukan MVVM
- Daftarkan ViewModel dengan menggunakan MultiProvider agar dapat menggunakan banyak ViewModel.
- MaterialApp sebagai Child Utamanya.

- Setelah itu Menampilkan Data di View
- Letakan pada bagian Build
- Menggunakan getters yang ada pada ViewModel
Data dapat langsung ditampilkan pada widgets.

> Struktur Direktori MVVM yaitu
- Model memiliki 2 bagian, yaitu bentuk data yang akan digunakan dan sumber dari data tersebut.
- Tiap Screen diletakan dalam sebuah direktori yang didalamnya terdapay View dan ViewModel

> Pengertian Model
- Model yaitu Bentuk data yang akan digunakan, dibuat dalam bentuk class
- Data data yang dimuat, diletakan pada property

> Pengertian ViewModel
- ViewModel Menyimpan data-data logic yang diperlukan halaman ContactScreen
- Jika ada Widget lain memerlukan logic yang sama, dapat menggunakan ViewModel ini juga.