import 'dart:io';

class Soal {
  void tampilanUtama() {
    print('\n###### Daftar Isi Soal Prioritas 2 ######');
    print('1. Buatlah sebuah piramid bintang');
    print('2. Buatlah sebuah jam pasir');
    print('3. tampilkan faktorial dari nilai nilai: 10, 40, 50');
    print(
        '4. Buatlah sebuah function dengan parameter untuk menghitung luas lingkaran. kemudian function lingkaran tersebut dijalankan pada function main!');
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
      soalSatu.piramidBintang();
    } else if (pilih == 2) {
      SoalDua soalDua = SoalDua();
      soalDua.jamPasir();
    } else if (pilih == 3) {
      SoalTiga soalTiga = SoalTiga();
      soalTiga.faktorialDariNilai(10);
      soalTiga.faktorialDariNilai(40);
      soalTiga.faktorialDariNilai(50);
    } else if (pilih == 4) {
      print('Silahkan Uncomment di body fungsi main');
    } else {
      print('Harap Masukan Angka 1 || 2 || 3 || 4');
    }
  }
}

/// Soal Satu, Piramid Bintang
class SoalSatu extends Soal {
  void piramidBintang() {
    int spasi, baris;

    stdout.write('\nMasukan Jumlah Baris: ');
    baris = int.parse(stdin.readLineSync()!);

    for (int i = 1, k = 0; i <= baris; ++i, k = 0) {
      for (spasi = 1; spasi <= baris - i; ++spasi) {
        stdout.write('  ');
      }

      while (k != 2 * i - 1) {
        stdout.write('* ');
        ++k;
      }
      print('');
    }
  }
}

/// Soal Dua, Jam Pasir
class SoalDua extends Soal {
  late int b, k, c;

  void jamPasir() {
    print('');
    for (b = 1; b <= 6; b++) {
      for (k = 1; k <= b; k++) {
        stdout.write(' ');
      }
      for (c = 6; c >= b; c--) {
        stdout.write('0 ');
      }
      print('');
    }

    for (b = 5; b >= 1; b--) {
      for (k = 1; k <= b; k++) {
        stdout.write(' ');
      }
      for (c = 6; c >= b; c--) {
        stdout.write('0 ');
      }
      print('');
    }
  }
}

/// Soal Tiga, Faktorial dari nilai 10, 40, 50
class SoalTiga extends Soal {
  double? hasil;

  void faktorialDariNilai(int angka) {
    stdout.write('$angka! = ');
    hasil = 1;
    for (int i = 1; i <= angka; i++) {
      hasil = (hasil! * i);

      // Untuk Menampilkan Angka
      stdout.write(i);
      if (i != angka) {
        stdout.write(' * ');
      }
    }
    print(' = $hasil');
  }
}

/// Soal Empat, Function luas Lingkaran
double? hLuasLingkaran(double? r) {
  final double phi = 3.14; // Bisa pakai 3.14 || 22/7 (3.14285714)
  double? luasLingkaran;
  if (r != null) {
    luasLingkaran = phi * r * r; // Rumus Luas Lingkaran
  }
  return luasLingkaran;
}

void main(List<String> args) {
  Pemilihan pemilihan = Pemilihan();
  pemilihan.choose();

  /// Khusus Soal 4, Function dipanggil di function main.(Uncomment Code Dibawah)
  //  print('Luas Lingkaran dari 10 adalah ${hLuasLingkaran(10)}');
}
