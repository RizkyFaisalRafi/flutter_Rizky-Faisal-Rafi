/*
1. Buatlah sebuah program untuk mengecek apakah sebuah kata merupakan sebuah palindrom atau bukan. Palindrom adalah sebuah kata yang jika dibalik dari kata aslinya memiliki cara baca atau susunan yang sama persis.

    Sampel Input: 'kasur rusak'
    
    Sampel Output: 'palindrom'
    
    Penjelasan: kata 'kasur rusak' jika dibalik adalah 'kasur rusak' sehingga kata ini merupakan kata palindrom.
    
    Sampel Input: 'mobil balap'
    
    Sampel Output: 'bukan palindrom'
    
    Penjelasan: kata 'mobil balap' jika dibalik adalah 'palab libom' sehingga kata ini bukan palindrom karena ketika dibalik cara membacanya menjadi berbeda.

2. Buatlah sebuah program untuk mencari faktor dari sebuah bilangan yang dimasukkan.
    Sampel Input: 24
    Sampel Output: (https://cobalt-bike-c9e.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F14b85e1d-81c7-4d42-a860-97a5a38be7f5%2Feksplor_ft_2.png?id=531eac3f-f0bb-4651-9a4e-89c4253f0acf&table=block&spaceId=735d4ca0-4767-45ab-acd3-3d630d4151fd&width=220&userId=&cache=v2)
*/

import 'dart:io';

class Soal {
  void tampilanUtama() {
    print('\n###### Daftar Isi Soal Exsplorasi ######');
    print(
        '1. Buatlah sebuah program untuk mengecek apakah sebuah kata merupakan sebuah palindrom atau bukan.');
    print(
        '2. Buatlah sebuah program untuk mencari faktor dari sebuah bilangan yang dimasukkan.');
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
    if (pilih == 1) {
      CheckPalindrom checkPalindrome = CheckPalindrom();
      checkPalindrome.check();
    } else if (pilih == 2) {
      ProgramFaktor programFaktor = ProgramFaktor();
      programFaktor.faktor();
    } else {
      print('Harap Masukan Angka 1 || 2');
    }
  }
}

// Soal Nomor 1
class CheckPalindrom extends Soal {
  String? kata;
  int? n, b;
  bool palindrom = true;

  void check() {
    do {
      print('\nProgram Mengecek Kata / Kalimat Palindrom atau Bukan');

      stdout.write('Masukan Kata(menggunakan lowercase): ');
      kata = stdin.readLineSync();

      n = kata!.length;

      for (int i = 0; i < n!; i++) {
        if (kata![i] != kata![n! - i - 1]) {
          palindrom = false;
          break;
        }
      }
      stdout.write('Result: ');
      if (palindrom == true) {
        print('Kata $kata merupakan Palindrome.');
      } else {
        print('Kata $kata merupakan Bukan Palindrome.');
      }
      stdout.write('Mau Kembali(1 = Yes(Back) || 2 = No(Finish))? ');
      b = int.parse(stdin.readLineSync()!);
      if (b == 1) {
        Pemilihan back = Pemilihan();
        back.choose();
        break;
      } else if (b == 2) {
        print("\nProgram Finish\nTerima Kasih :)");
        break;
      } else {
        print('Harap Masukan Angka 1 || 2');
      }
    } while (true);
  }
}

// Soal Nomor 2
class ProgramFaktor extends Soal {
  int? angka, b;

  void faktor() {
    do {
      print('Program Mencari Faktor');
      stdout.write('Masukan Bilangan Bulat Positif: ');
      angka = int.parse(stdin.readLineSync()!);

      stdout.write('Faktor dari bilangan $angka yaitu: ');
      // Format Horizontal
      for (int i = 1; i <= angka!; i++) {
        // Sisa bagi = 0 maka termasuk faktor
        if (angka! % i == 0) {
          stdout.write('$i ');
        }
      }
      print('\n\n|| Result ||');
      // Format Vertical
      for (int i = 1; i <= angka!; i++) {
        // Sisa bagi = 0 maka termasuk faktor
        if (angka! % i == 0) {
          print('\t$i');
        }
      }
      stdout.write(
          'Mau Menghitung Lagi(1 = Yes || 2 = No(Finish) || 3 = Back)? ');
      b = int.parse(stdin.readLineSync()!);
      if (b == 1) {
        faktor();
        break;
      } else if (b == 2) {
        print("\nProgram Finish\nTerima Kasih :)");
        break;
      } else if (b == 3) {
        Pemilihan back = Pemilihan();
        back.choose();
        break;
      } else {
        print('Harap Masukan Angka 1 || 2 || 3');
      }
    } while (true);
  }
}

void main(List<String> args) {
  Pemilihan show = Pemilihan();
  show.choose();
}
