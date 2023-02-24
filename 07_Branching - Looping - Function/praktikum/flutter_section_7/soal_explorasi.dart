import 'dart:io';

class Soal {
  void tampilanUtama() {
    print('\n###### Daftar Isi Soal Exsplorasi ######');
    print(
        '1. Buatlah sebuah program untuk mengecek apakah sebuah bilangan termasuk bilangan prima atau bukan.');
    print('\t- Sampel Input: 23');
    print('\t- Sampel Output: bilangan prima');
    print('\t- Sampel Input: 12');
    print('\t- Sampel Output: bukan bilangan prima');

    print('2. Buatlah sebuah program untuk mencetak tabel perkalian.');
    print('\t- Sampel Input: 9');
    print('\t- Sampel Output: 18 dalam gambar');
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
      SoalSatu soalSatu = SoalSatu();
      soalSatu.checkBilPrima();
    } else if (pilih == 2) {
      SoalDua soalDua = SoalDua();
      soalDua.tabelPerkalian();
    } else {
      print('Harap Masukan Angka 1 || 2');
    }
  }
}

/// Soal Satu
class SoalSatu extends Soal {
  int? n;
  bool angkaPrima = true;
  void checkBilPrima() {
    stdout.write('\nInput satu angka bilangan bulat: ');
    n = int.parse(stdin.readLineSync()!);

    // 0 dan 1 bukan angka prima
    if (n == 0 || n == 1) {
      angkaPrima = false;
    } else {
      for (int i = 2; i <= n! / 2; i++) {
        if (n! % i == 0) {
          angkaPrima = false;
          break;
        }
      }
    }
    print('');
    if (angkaPrima) {
      stdout.write('$n adalah bilangan prima\n');
    } else {
      stdout.write('$n adalah bukan bilangan prima\n');
    }
    print('');
  }
}

/// Soal Dua
class SoalDua extends Soal {
  int? batasPerkalian, batasBilangan;
  void tabelPerkalian() {
    stdout.write('\nMasukan batas bilangan: ');
    batasBilangan = int.parse(stdin.readLineSync()!);
    stdout.write('Masukan batas perkalian: ');
    batasPerkalian = int.parse(stdin.readLineSync()!);

    for (int i = 1; i <= batasBilangan!; i++) {
      for (int j = 1; j <= batasPerkalian!; j++) {
        stdout.write(' ${i * j} \t ');
      }
      print('');
    }
  }
}

void main() {
  Pemilihan show = Pemilihan();
  show.choose();
}
