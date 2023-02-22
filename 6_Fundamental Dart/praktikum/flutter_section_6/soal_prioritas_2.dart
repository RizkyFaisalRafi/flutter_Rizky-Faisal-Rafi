import 'dart:io';

class Soal {
  void tampilanUtama() {
    print('\n###### Daftar Isi Soal Prioritas 2 ######');
    print(
        '1. Buat 3 buah variabel yang menampung tipe data String, lalu sambungkan 3 variabel tersebut dan tampilkan pada layar.');
    print(
        '2. Implementasikan rumus volume dari tabung (silinder) dengan menggunakan Bahasa Dart.');
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
      soalSatu();
    } else if (pilih == 2) {
      Tabung tampil2 = Tabung();
      tampil2.hitungVolume();
    } else {
      print('Harap Masukan Angka 1 || 2');
    }
  }
}

// Soal Nomor 1 Menampilkan data String ke layar
void soalSatu() {
  String firstName = 'Rizky'; // Variabel 1 Bertipe data String
  String middleName = 'Faisal'; // Variabel 2 Bertipe data String
  String lastName = 'Rafi'; // Variabel 3 Bertipe data String
  int? chooseBack;
  print(firstName + middleName + lastName);

  // Atau bisa menggunakan String Interpolation $
  String concatenate = "$firstName $middleName $lastName";
  print('$firstName $middleName $lastName');
  print(concatenate);
  stdout.write('\nKlik 1 untuk kembali: ');
  chooseBack = int.parse(stdin.readLineSync()!);
  if (chooseBack == 1) {
    Pemilihan back = Pemilihan();
    back.choose();
  }
}

// Soal Nomor 2 Tabung hitung Volume
class Tabung extends Soal {
  final double phi = 3.14; // Bisa pakai 3.14 || 22/7 (3.14285714)
  double? jarijari, tinggi;
  double? volumeTabung;
  int? b;

  void hitungVolume() {
    do {
      print('######   Tabung    ######');
      stdout.write('Masukan Jari Jari Alas: ');
      jarijari = double.parse(stdin.readLineSync()!);
      stdout.write('Masukan Tinggi: ');
      tinggi = double.parse(stdin.readLineSync()!);

      // Rumus Volume Tabung
      volumeTabung = (phi * jarijari! * jarijari!) * tinggi!;

      print('JAWAB:');
      print('Volume Tabung = $volumeTabung');
      stdout.write(
          'Mau Menghitung Lagi(1 = Yes || 2 = No(Finish) || 3 = Back)? ');
      b = int.parse(stdin.readLineSync()!);
      if (b == 1) {
        hitungVolume();
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
