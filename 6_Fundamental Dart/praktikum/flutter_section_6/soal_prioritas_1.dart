import 'dart:io';

class Soal {
  void tampilanUtama() {
    print('\n###### Daftar Isi Soal Prioritas 1 ######');
    print(
        '1. Buatlah rumus keliling dan luas persegi dengan menggunakan bahasa pemrograman Dart.');
    print(
        '2. Buatlah rumus keliling dan luas persegi panjang dengan menggunakan bahasa pemrograman Dart.');
    print(
        '3. Implementasikan rumus keliling dan luas dari Lingkaran dengan menggunakan Bahasa Dart.');
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
      Persegi persegi = Persegi();
      persegi.hitungPersegiKelilingLuas();
    } else if (pilih == 2) {
      PersegiPanjang persegiPanjang = PersegiPanjang();
      persegiPanjang.hitungpersegiPanjangKelilingLuas();
    } else if (pilih == 3) {
      Lingkaran lingkaran = Lingkaran();
      lingkaran.hitungLingkaranKelilingLuas();
    } else {
      print('Harap Masukan Angka 1 || 2 || 3');
    }
  }
}

// Soal Nomor 1 Persegi hitung Luas dan Keliling
class Persegi extends Soal {
  double? luasPersegi, kelilingPersegi, s;
  int? a;

  double? hLuasPersegi(double s) {
    luasPersegi = s * s; // Rumus Luas Persegi
    return luasPersegi;
  }

  double? hKelilingPersegi(double s) {
    kelilingPersegi = 4 * s; // Rumus Keliling Persegi
    return kelilingPersegi;
  }

  void hitungPersegiKelilingLuas() {
    do {
      print('\n######   PERSEGI   ######');
      print('==== Hitung Keliling Dan Luas ====');
      stdout.write('Masukan sisi: ');
      s = double.parse(stdin.readLineSync()!);
      luasPersegi = hLuasPersegi(s!);
      kelilingPersegi = hKelilingPersegi(s!);
      print('JAWAB: ');
      stdout.write('Luas Persegi\t\t= $luasPersegi\n');
      stdout.write('Keliling Persegi\t= $kelilingPersegi\n');
      stdout.write(
          'Mau Menghitung Lagi(1 = Yes || 2 = No(Finish) || 3 = Back)? ');
      a = int.parse(stdin.readLineSync()!);
      if (a == 1) {
        hitungPersegiKelilingLuas();
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

// Soal Nomor 2 Persegi Panjang hitung Luas dan Keliling
class PersegiPanjang extends Soal {
  double? luasPersegiPanjang, kelilingPersegiPanjang, p, l;
  int? a;

  double? hLuasPersegiPnjang(double p, double l) {
    luasPersegiPanjang = p * l; // Rumus Luas Persegi Panjang
    return luasPersegiPanjang;
  }

  double? hKelilingPersegiPnjng(double p, double l) {
    kelilingPersegiPanjang = 2 * (p + l); // Rumus Keliling Persegi Panjang
    return kelilingPersegiPanjang;
  }

  void hitungpersegiPanjangKelilingLuas() {
    do {
      print('\n######   PERSEGI PANJANG   ######');
      print('==== Hitung Keliling Dan Luas ====');
      stdout.write('Masukan panjang: ');
      p = double.parse(stdin.readLineSync()!);
      stdout.write('Masukan Lebar: ');
      l = double.parse(stdin.readLineSync()!);
      luasPersegiPanjang = hLuasPersegiPnjang(p!, l!);
      kelilingPersegiPanjang = hKelilingPersegiPnjng(p!, l!);
      print('JAWAB: ');
      stdout.write('Luas Persegi Panjang\t\t= $luasPersegiPanjang\n');
      stdout.write('Keliling Persegi Panjang\t= $kelilingPersegiPanjang\n');
      stdout.write(
          'Mau Menghitung Lagi(1 = Yes || 2 = No(Finish) || 3 = Back)? ');
      a = int.parse(stdin.readLineSync()!);
      if (a == 1) {
        hitungpersegiPanjangKelilingLuas();
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

// Soal Nomor 3 Lingkaran hitung Luas dan Keliling
class Lingkaran extends Soal {
  final double phi = 3.14; // Bisa pakai 3.14 || 22/7 (3.14285714)
  double? luasLingkaran, kelilingLingkaran, r;
  int? a;

  double? hLuasLingkaran(double r) {
    luasLingkaran = phi * r * r; // Rumus Luas Lingkaran
    return luasLingkaran;
  }

  double? hKelilingLingkaran(double r) {
    kelilingLingkaran = 2 * phi * r; // Rumus Keliling Lingkaran
    return kelilingLingkaran;
  }

  void hitungLingkaranKelilingLuas() {
    do {
      print('\n######   LINGKARAN   ######');
      print('==== Hitung Keliling Dan Luas ====');
      stdout.write('Masukan jari jari: ');
      r = double.parse(stdin.readLineSync()!);

      luasLingkaran = hLuasLingkaran(r!);
      kelilingLingkaran = hKelilingLingkaran(r!);

      print('JAWAB: ');
      stdout.write('Luas Lingkaran\t\t= $luasLingkaran\n');
      stdout.write('Keliling Lingkaran\t= $kelilingLingkaran\n');
      stdout.write(
          'Mau Menghitung Lagi(1 = Yes || 2 = No(Finish) || 3 = Back)? ');
      a = int.parse(stdin.readLineSync()!);
      if (a == 1) {
        hitungLingkaranKelilingLuas();
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

void main(List<String> args) {
  Pemilihan show = Pemilihan();
  show.choose();
}
