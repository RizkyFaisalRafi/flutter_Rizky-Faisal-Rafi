# Resume Section 16 Flutter Form (Form Input Button) and Advance Form

# Materi Form
> Form
- Form Menerima isian data dari pengguna.
- Isian data dapat lebih dari satu.
- Menggunakan StatefulWidget dan keadaan form disimpan menggunakan GlobalKey.
- Jangan lupa tambah Controller pada masing-masing inputan form.

> Input
- Didalam input ada TextField/TextFormField, Radio, Checkbox, Dropdown.
- Perbedaan TextField dengan TextFormField yaitu kalau TextFormField ada Validator yang berguna untuk validasi setiap inputan, seperti nama tidak boleh kosong, angka dimulai dengan angka 0 dan lain sebagainya. sedangkan TextField tidak ada validator.
- Data diambil menggunakan TextEditing Controller
- Isian data bisa berupa teks atau nomor.
- Untuk Radio memberi opsi kepada pengguna namun hanya dapat memilih satu opsi.
- Sedangkan Checkbox memberi opsi kepada pengguna namun bisa memilih beberapa opsi.
- Untuk Dropdown memberi opsi kepada pengguna namun hanya dapat memilih satu opsi dan opsi tidak ditampilkan diawal, hanya tampil jika ditekan.

> Button
- Didalam Button terdapat Elevated Button dan IconButton pada materi.
- Button dapat melakukan suatu aksi ketika ditekan.
- Perbedaan ElevatedButton dengan IconButton yaitu apabila ElevatedButton berbentuk seperti button yang timbul, sedang IconButton Tombol yang hanya menampilkan Icon.


# Materi Advance Form
> Date Picker
- Widget dimana user bisa memasukan Tanggal.
- Tanggal kelahiran, waktu pemesanan tiket, waktu reservasi, restoran, jadwal meeting, dan lain sebaginya.
- Menggunakan fungsi bawaan flutter showDatePicker dan tambahkan package intl (https://pub.dev/packages/intl).

> Color Picker
- Widget dimana user bisa memilih color.
- Penggunaan Color Picker bisa digunakan untuk berbagai macam kondisi.
- Tambahkan Package flutter_colorpicker (https://pub.dev/packages/flutter_colorpicker).
Di ColorPicker ini ada 3 Tampilan pemilihan warna yaitu ada BlockPicker, ColorPicker dan SlidePicker.

> File Picker
- Kemampuan widget untuk mengakses storage.
- Memilih dan membuka file.
- Tambahkan Package FilePicker (https://pub.dev/packages/file_picker).
- Tambahkan juga Package OpenFile untuk membuka filenya (https://pub.dev/packages/open_file)
