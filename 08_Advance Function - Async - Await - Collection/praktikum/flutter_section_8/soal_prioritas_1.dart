/*
Overview 
1. Memahami materi mengenai Async Await dan juga Collection(Map, List)
2. Mengimplementasikan penggunaan async await.
3. Mengimplementasikan penggunaan collection pada bahasa pemrograman Dart.

Soal Prioritas 1
1. Buatlah sebuah fungsi dengan spesifikasi berikut:
  - Menerima 2 parameter, yaitu list data dan pengali
  - Lakukan perulangan pada list data secara asynchronous
  - Tiap perulangan, kalikan elemen list data dengan pengali
  - Return list baru yang berisi hasil proses diatas
*/

void main(List<String> args) async {
  List<int> data = [1, 2, 3, 4, 5];
  int pengali = 10;

  // Skenario Perkalian
  print('${data[0]} * $pengali'); // String Interpolation
  print('${data[1]} * $pengali');
  print('${data[2]} * $pengali');
  print('${data[3]} * $pengali');
  print('${data[4]} * $pengali\nResult:');
  List<int> multipliedData = await multiplyAsync(data, pengali);
  print(multipliedData);
}

// Menerima 2 parameter, yaitu list data dan pengali
Future<List<int>> multiplyAsync(List<int> data, int pengali) async {
  List<int> multipliedList = [];

  for (int item in data) {
    multipliedList.add(item *
        pengali); // Tiap perulangan, kalikan elemen list data dengan pengali secara asynchronous
    await Future.delayed(Duration(
        seconds:
            1)); // delay 1 detik pada tiap perulangan agar fungsi bersifat asinkronus
    print(item * pengali);
  }

  // Return list baru yang berisi hasil proses diatas
  return multipliedList;
}
