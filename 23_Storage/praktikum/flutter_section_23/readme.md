# Resume Section 23 Flutter Storage

> Penyimpanan Lokal
- Diperlukan untuk efisiensi penggunaan data internet
- Ada beberapa cara implementasi penyimpanan lokal, contohnya Shared Preferences dan Local Database

> Shared Preferences
- SharedPreferences menyimpan data yang sederhana
- Penyimpanannya dengan format key-value
- Menyimpan tipe data dasar seperti teks, angka dan boolean
- Contoh penggunaanya seperti menyimpan data login dan menyimpan riwayat pencarian
- Tambahkan package shared_preferences pada pubspec.yaml dari pub.dev(https://pub.dev/packages/shared_preferences)

> Local Database (SQLite)
- Menyimpan dan meminta data dalam jumlah besar pada local device
- Bersifat Private
- Menggunakan SQLite database melalui package sqflite(https://pub.dev/packages/sqflite)
- SQLite adalah database open source yang mendukung insert, read, update dan remove data.
- Tambahkan juga package path(https://pub.dev/packages/path/install) digunakan untuk membuat, mengubah, dan membaca path dari file atau direktori pada sistem file perangkat.