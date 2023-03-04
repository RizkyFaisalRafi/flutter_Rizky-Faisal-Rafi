/*
1. Buatlah sebuah class Calculator dengan kriteria sebagai berikut:
    1. Terdapat method untuk melakukan penjumlahan dua bilangan.
    2. Terdapat method untuk melakukan pengurangan dua bilangan.
    3. Terdapat method untuk melakukan perkalian dua bilangan.
    4. Terdapat method untuk melakukan pembagian dua bilangan.
2. Buatlah sebuah class Course dan Student dengan kriteria sebagai berikut:
    1. Atribut dari Course terdiri dari judul dan deskripsi.
    2. Atribut dari Student terdiri dari nama, kelas dan daftar course yang dimiliki.
    3. Student dapat menambahkan course.
    4. Student dapat menghapus course.
    5. Student dapat melihat semua course yang telah ditambahkan.
*/

import 'dart:io';

void main(List<String> args) {
  Pemilihan show = Pemilihan();
  show.choose();
}

class Soal {
  void tampilanUtama() {
    print('\n###### Daftar Isi Soal Prioritas 2 ######');
    print('1. Buatlah sebuah class Calculator.');
    print('2. Buatlah sebuah class Course dan Student.');
    print('##########################');
  }
}

class Pemilihan extends Soal {
  int? pilih;

  void choose() {
    Soal objek = Soal();
    objek.tampilanUtama();
    stdout.write('Pilih Daftar Soal: ');
    pilih = int.parse(stdin.readLineSync()!);

    if (pilih == 1) { // Menjalankan Program Calculator
      Calculator calculator = Calculator();
      calculator.hitung();
    } else if (pilih == 2) { // Menjalankan Program Student
      Student student =
          Student('Rizky Faisal Rafi', 'Semester 6'); // Data Student
      print('Data Mahasiswa:');
      print('Nama: ${student.name}');
      print('Semester: ${student.grade}');
      while (true) {
        print('\n1 - Tambah course');
        print('2 - Hapus course');
        print('3 - Melihat courses');
        print('4 - Keluar');
        stdout.write('Pilih opsi: ');
        int choice = int.parse(stdin.readLineSync()!);
        switch (choice) {
          case 1:
            student.addCourse();
            break;
          case 2:
            student.removeCourse();
            break;
          case 3:
            student.viewCourses();
            break;
          case 4:
            print("\nProgram Finish\nTerima Kasih :)");
            return;
          default:
            print('Pilihan tidak ada (Harap masukan 1, 2, 3, 4).');
            break;
        }
      }
    } else {
      print('Harap Masukan Angka 1 || 2 || 3');
    }
  }
}

// Soal ke-1
class Calculator {
  // ignore: prefer_typing_uninitialized_variables
  var bilanganPertama, bilanganKedua;
  int? choice;

  // Pertambahan
  double add(double a, double b) {
    return a + b;
  }

  // Pengurangan
  double subtract(double a, double b) {
    return a - b;
  }

  // Perkalian
  double multiply(double a, double b) {
    return a * b;
  }

  // Pembagian
  double divide(double a, double b) {
    if (b == 0) {
      throw Exception("Tidak dapat dibagi dengan nol");
    }
    return a / b;
  }

  void hitung() {
    stdout.write('Masukan Bilangan ke-1: ');
    bilanganPertama = double.parse(stdin.readLineSync()!);
    stdout.write('Masukan Bilangan ke-2: ');
    bilanganKedua = double.parse(stdin.readLineSync()!);

    print('1 - Tambah');
    print('2 - Kurang');
    print('3 - Kali');
    print('4 - Bagi');
    stdout.write('Pilih Operasi Perhitungan: ');
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        print('Result: ${add(bilanganPertama, bilanganKedua)}');
        break;
      case 2:
        print('Result: ${subtract(bilanganPertama, bilanganKedua)}');
        break;
      case 3:
        print('Result: ${multiply(bilanganPertama, bilanganKedua)}');
        break;
      case 4:
        try {
          print('Result: ${divide(bilanganPertama, bilanganKedua)}');
        } catch (e) {
          print(e);
        }
        break;
      default:
        print('Pilihan tidak ditemukan (1, 2, 3, 4)');
        break;
    }
  }
}

// Soal ke-2
class Course {
  String title; // Judul
  String description; // Deskripsi

  Course(this.title, this.description);
}

class Student {
  String name; // Nama
  String grade; // Kelas
  List<Course> courses = []; // Course

  Student(this.name, this.grade);

  // Fungsi Tambah Course
  void addCourse() {
    print('Masukkan judul course:');
    String title = stdin.readLineSync()!;
    print('Masukkan deskripsi course:');
    String description = stdin.readLineSync()!;
    Course course = Course(title, description);
    courses.add(course);
    print('Course berhasil ditambahkan!');
  }

  // Fungsi Menghapus Course
  void removeCourse() {
    if (courses.isEmpty) {
      print('Tidak ada course untuk dihapus');
      return;
    }
    print('Masukkan nomor course yang akan dihapus:');
    for (int i = 0; i < courses.length; i++) {
      print('${i + 1} - ${courses[i].title}');
    }
    int choice = int.parse(stdin.readLineSync()!) - 1;
    if (choice < 0 || choice >= courses.length) {
      print('Pilihan tidak ada');
      return;
    }
    courses.removeAt(choice);
    print('Course berhasil dihapus!');
  }

  // Fungsi Melihat Course
  void viewCourses() {
    if (courses.isEmpty) {
      print('Tidak ada course yang ditemukan');
      return;
    }
    print('Courses:');
    for (int i = 0; i < courses.length; i++) {
      print('${i + 1} - ${courses[i].title}');
      print('\t${courses[i].description}');
    }
  }
}
