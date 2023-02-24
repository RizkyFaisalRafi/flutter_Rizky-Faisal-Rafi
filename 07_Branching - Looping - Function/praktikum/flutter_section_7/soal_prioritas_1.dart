import 'dart:io';

class Soal {
  void tampilanUtama() {
    print('\n###### Daftar Isi Soal Prioritas 1 ######');
    print('1. Terdapat sebuah nilai(Tugas Percabangan):”');
    print('\t- jika nilai > 70 akan mereturn \'Nilai A\'');
    print('\t- jika nilai > 40 akan mereturn \'Nilai B\'');
    print('\t- jika nilai > 0 akan mereturn \'Nilai C\'');
    print('\t- selain itu return teks kosong');
    print(
        '2. tampilkan nilai 1 - 10 pada layar dengan menggunakan perulangan(Tugas Perulangan(Looping))!');
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
      TugasPercabangan tugasPercabangan = TugasPercabangan();
      tugasPercabangan.percabangan();
    } else if (pilih == 2) {
      TampilkanNilai tampilkanNilai = TampilkanNilai();
      tampilkanNilai.nilaiPerulangan();
    } else {
      print('Harap Masukan Angka 1 || 2');
    }
  }
}

/// Soal 1
class TugasPercabangan extends Soal {
  double? nilai;
  int? a;

  void percabangan() {
    do {
      print('\n######   Check Nilai   ######');
      print('==== Apakah Nilai A / B / C ====');
      stdout.write('Masukan nilai Anda: ');
      nilai = double.parse(stdin.readLineSync()!);
      // Nilai 0 sampai 100
      if (nilai! > 70 && nilai! <= 100) {
        print('Nilai A');
      } else if (nilai! > 40 && nilai! <= 69) {
        print('Nilai B');
      } else if (nilai! > 0 && nilai! <= 39) {
        print('Nilai C');
      } else {
        print(' ');
      }
      stdout.write(
          'Mau Mengecek nilai Lagi(1 = Yes || 2 = No(Finish) || 3 = Back)? ');
      a = int.parse(stdin.readLineSync()!);
      if (a == 1) {
        percabangan();
        break;
      } else if (a == 2) {
        print("\nProgram Finish\nTerima Kasih :)");
        break;
      } else if (a == 3) {
        Pemilihan back = Pemilihan();
        back.choose();
        break;
      } else {
        print('Harap Masukan Angka 1 || 2 || 3');
      }
    } while (true);
  }
}

/// Soal 2
class TampilkanNilai extends Soal {
  int? a;

  void nilaiPerulangan() {
    do {
      print('\nMenggunakan For Loop');
      for (int angka = 1; angka <= 10; angka++) {
        print('Perulangan ke-$angka');
      }

      print('\nMenggunakan For In');
      // Atau bisa juga menggunakan For in
      var array = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      for (var value in array) {
        stdout.write('$value ');
      }

      stdout.write(
          '\nMau Mengulangi Program Lagi(1 = Yes || 2 = No(Finish) || 3 = Back)? ');
      a = int.parse(stdin.readLineSync()!);
      if (a == 1) {
        nilaiPerulangan();
        break;
      } else if (a == 2) {
        print("\nProgram Finish\nTerima Kasih :)");
        break;
      } else if (a == 3) {
        Pemilihan back = Pemilihan();
        back.choose();
        break;
      } else {
        print('Harap Masukan Angka 1 || 2 || 3');
      }
    } while (true);
  }
}

void main(List<String> arguments) {
  Pemilihan show = Pemilihan();
  show.choose();
}
