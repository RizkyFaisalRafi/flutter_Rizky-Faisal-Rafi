# Resume Section 11 Deep Dive Into Dart Object Oriented Programming
# Video – Dart Object Oriented Programming 2 (27:37)

> Constructor
- Method yang dijalankan saat pembuatan object
- Dapat Menerima Parameter
- Tidak Memiliki Return
- Namanya sama dengan nama Class.

> Inheritance
- Inheritance / Pewarisan adalah kemampuan untuk menurunkan sebuah class ke class lain
-  kita bisa membuat class Parent dan class Child
- Saat sebuah class diturunkan, maka semua field dan method yang ada di class Parent, secara otomatis akan dimiliki oleh class Child

> Method Overriding
- Menulis ulang Method yang ada pada super class
- Bertujuan agar class memiliki method yang sama, dengan proses yangberbeda.
- Dilakukan pada class yang melakukan inheritance
- Method sudah ada pada class parent
- Method ditulis ulang seperti membuat method baru pada class child
- Ditambahkan keyword @Override dibaris sebelum method dibuat


> Interface
- Seluruh method wajib di override
- Untuk mewariskan interface, kita tidak menggunakan kata kunci extends, melainkan implements
- Berupa Class dan Menunjukan method apa saja yang ada pada suatu class 

> Abstract Class
- Berupa class Abstract
- Menunjukan method apa saja yang ada pada suatu  class
- Digunakan dengan menggunakan extends
- Tidak dapat dibuat object
- Tidak Semua method harus di override


> Polymorphism
- Kemampuan data berubah menjadi bentuk lain
- Tipe data yang dapat digunakan adalah super class
- Dapat dilakukan pada class dengan extends atau implements


> Generics
- Dapat digunakan pada class atau fungsi
- Memberi kemampuan agar dapat menerima data dengan tipe yang berbeda
- Tipe data yang diinginkan, ditentukan saat membuat class atau menjalankan fungsi.