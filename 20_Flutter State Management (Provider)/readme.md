# Resume Section 20 Flutter State Management (Provider)

> Pengertian State
- State yaitu Data yang dapat dibaca saat pembuatan widget
- Dapat berubah saat widget sedang aktif
- Hanya dimiliki oleh StatefulWidget
- Memanfaatkan State dengan dibuat sebagai property dari class dan digunakan pada widget saat build
- Mengubah state dapat menggunakan setState

> Global State
- State yang dapat digunakan di seluruh widget Flutter pada aplikasi disebut "Global State". Global state adalah state yang dapat diakses dan dimodifikasi oleh berbagai widget pada aplikasi, sehingga memungkinkan komunikasi dan koordinasi antar widget yang berbeda. Di Flutter, terdapat beberapa cara untuk mengelola global state pada aplikasi, seperti menggunakan state management library seperti Provider, BLoC, atau Redux, atau dengan menggunakan teknik InheritedWidget. Dengan menggunakan global state, pengguna dapat mengurangi duplikasi kode dan meningkatkan efisiensi pada pengembangan aplikasi.
- Perlu Global State karena agar antara widget dapat memanfaatkan state yang sama dengan mudah
- State biasa yang dapat digunakan pada seluruh widget
- Dapat menggunakan State Management Provider perlu di instal agar dapat digunakan (https://pub.dev/packages/provider)

> Provider
- Langkah" State management Provider:
        
1. Buat Class Shared State perlu implementation Change Notifier supaya dia bisa ngasih tau ke yang membutuhkan.
        
2. Kepala dari tree yaitu Scaffold perlu dibungkus dengan namanya Change Notifier Provider. Change Notifier Provider yang akan menyediakan instance object si Shared State.
        
3. Widget yang berkaitan statenya berubah dibungkus dengan Consumer, Widget Consumer ini berfungsi untuk menandakan suatu widget perlu diberitahu jika adanya perubahan dari state yang bersangkutan.

- Menggunakan state dari Provider dapat dilakukan dengan "Provider.of()". Fungsi Provider.of() digunakan untuk mengakses state yang terdaftar pada Provider dan diikat pada widget tertentu pada aplikasi. Dengan menggunakan Provider.of(), pengguna dapat mengambil data state dan memperbarui tampilan pada widget yang terkait dengan state tersebut. Namun, perlu diingat bahwa pengguna harus memastikan bahwa Provider.of() diakses pada widget yang sesuai dengan tipe state yang diinginkan, jika tidak akan terjadi error. Selain itu, pengguna juga harus memperhatikan jenis state management yang digunakan pada aplikasi, karena sintaksis dan cara penggunaan Provider.of() dapat berbeda-beda tergantung pada library atau framework yang digunakan.

- NotifyListeners berfungsi untuk memberitahukan pada widget" yang sedang menunggu, si consumer itulah yg menunggu.

> Pengertian Getter and Setter
- Getter adalah metode yang digunakan untuk mengambil nilai variabel atau property dari sebuah class. Dalam Flutter, getter didefinisikan dengan menambahkan kata kunci get di depan nama method.

- Sedangkan setter adalah metode yang digunakan untuk mengubah nilai variabel atau property di dalam sebuah class. Dalam Flutter, setter didefinisikan dengan menambahkan kata kunci set di depan nama method, dan diikuti dengan parameter yang akan digunakan untuk menetapkan nilai pada property tersebut.