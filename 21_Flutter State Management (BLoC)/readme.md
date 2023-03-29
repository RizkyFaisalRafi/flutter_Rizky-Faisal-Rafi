# Resume Section 21 Flutter State Management (Bloc)

> Declarative UI
- Flutter memiliki sifat declarative yang artinya flutter membangun UInya pada screen untuk mencerminkan keadaan state saat ini.
- State adalah ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori.
- Flutter akan membangun ulang UInya ketika ada state atau data yang berubah
- Ada 2 jenis state dalam flutter, ephemeral state dan app state

> Ephemeral State
- Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widgetnya, contohnya:
1. PageView
2. BottomNavigationBar
3. Switch Button

- Tidak perlu state management yang kompleks
- Hanya membutuhkan StatefulWidget dengan menggunakan fungsi setState()

> App State
- Digunakan ketika bagian yang lain suatu aplikasi membutuhkaan akses ke data state widget, contohnya:
1. Login Info
2. Pengaturan preferensi pengguna
3. Keranjang belanja, dimana informasi yang pengguna pilih di suatu screen yang mana informasi itu akan muncul di screen yang berbeda

> Pendekatan State Management
- SetState Lebih cocok penggunaannya pada ephemeral state.
- Provider Penggunaan untuk state management yang lebih kompleks seperti app state, pendekatan ini direkomendasikan oleh tim flutter karena mudah dipelajari
- Bloc menggunakan pola stream/observable, untuk memisahkan UI dengan bisnis Logicnya

> BLoc
- BLoc (Business Logic Component)
- Memisahkan antara business logic dengan UI

> Cara kerja BLoc
- Menerima event sebagai input
- Dianalisa dan Dikelola didalam BLoc
- Menghasil state sebagai output
- Event(Input) -> BLoc -> State(Output)

> Stream
- Rangkaian proses secara Asynchronus
- Actor utama didalam BLoc