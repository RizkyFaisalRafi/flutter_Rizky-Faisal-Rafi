import 'dart:io';

void main(List<String> args) {
  BangunRuang bangun = BangunRuang();
  // Memanggil fungsi volume dari class BangunRuang
  print(bangun.volume()); // return 0

  Kubus kubus = Kubus(4);
  print('\nsisi * sisi * sisi = ${kubus.sisi} * ${kubus.sisi} * ${kubus.sisi}');
  stdout.write('Result: ');
  // Memanggil fungsi volume dari class Kubus
  print(kubus.volume()); // return sisi * sisi * sisi

  Balok balok = Balok(4, 2, 4);
  print(
      '\npanjang * lebar * tinggi = ${balok.panjang} * ${balok.lebar} * ${balok.tinggi}');
  stdout.write('Result: ');
  // Memanggil fungsi volume dari class Balok
  print(balok.volume()); // return panjang * lebar * tinggi
}

class BangunRuang {
  late int panjang, lebar, tinggi;

  int volume() => 0;
}

class Kubus extends BangunRuang {
  late int sisi;
  Kubus(int s) {
    sisi = s;
  }

  @override
  int volume() => sisi * sisi * sisi;
}

class Balok extends BangunRuang {
  Balok(int p, l, t) {
    panjang = p;
    lebar = l;
    tinggi = t;
  }

  @override
  int volume() => panjang * lebar * tinggi;
}
