/*
buatlah sebuah class dengan ketentuan dibawah ini
https://cobalt-bike-c9e.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Fae01f983-edf0-44a1-beed-75e5a8ed017a%2FUntitled.png?id=7de4a2e4-f436-460b-b7ff-c25288ca7186&table=block&spaceId=735d4ca0-4767-45ab-acd3-3d630d4151fd&width=720&userId=&cache=v2

Selanjutnya pada class Mobil, tambahkan method totalMuatan untuk menghitung 
total muatan yang diangkut oleh mobil tersebut!
https://cobalt-bike-c9e.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F1fd657bb-41dc-42ec-b763-128cf6011294%2FUntitled.png?id=80b1a2e6-6b10-4f15-ab89-622aeead77b7&table=block&spaceId=735d4ca0-4767-45ab-acd3-3d630d4151fd&width=820&userId=&cache=v2
*/

void main(List<String> args) {
  // ignore: unused_local_variable
  double totalMuatan;
  var mobil = Mobil(100); // Maksimal kapasitas muatan mobil.

  // Menambahkan Muatan Kucing
  Hewan kucing = Hewan(3.5);
  mobil.hewanMuatan.add(kucing);
  print('Berat Kucing: ${kucing.berat}');

  // Menambahkan Muatan sapi
  Hewan sapi = Hewan(10);
  mobil.hewanMuatan.add(sapi);
  print('Berat Sapi: ${sapi.berat}');

  totalMuatan = mobil.hitungTotalMuatan();
}

class Hewan {
  double? berat;
  Hewan(this.berat);
}

class Mobil {
  double? kapasitas;
  List<Hewan> hewanMuatan = [];
  Mobil(this.kapasitas);

  double hitungTotalMuatan() {
    double totalMuatan = 0;
    double tersisa = kapasitas! - totalMuatan;

    for (var hewan in hewanMuatan) {
      totalMuatan += hewan.berat!;
    }

    if (totalMuatan <= kapasitas!) {
      print('Total Muatan Mobil: $totalMuatan kg');
      print('Kapasitas Mobil: $kapasitas kg');
      print('Status: Kapasitas Tersedia (Kapasitas tersisa $tersisa kg)');
    } else {
      print('Total Muatan Mobil: $totalMuatan kg');
      print('Kapasitas Mobil: $kapasitas kg');
      print('Status: Kapasitas Penuh (Harap tambahkan kapasitas muatan)');
    }

    return totalMuatan;
  }
}
