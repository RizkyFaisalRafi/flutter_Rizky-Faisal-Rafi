/*
Overview 
1. Memahami materi mengenai Async Await dan juga Collection(Map, List)
2. Mengimplementasikan penggunaan async await.
3. Mengimplementasikan penggunaan collection pada bahasa pemrograman Dart.

Soal Prioritas 2
1. Buatlah sebuah list dengan spesifikasi berikut:
  - Tiap elemen wajib berupa list juga
  - tiap element wajib terdapat 2 data(sub-elemen)
  - Buatlah sebuah map dengan menggunakan list tersebut

2. Buatlah sebuah program untuk menghitung rata-rata dari sekumpulan nilai.
  - Lakukan pembulatan keatas untuk nilai hasil perhitungan rata-rata.
  - Sampel Input: [7,5,3,5,2,1]
  - Sampel Output: 4

3. Buatlah sebuah program untuk melakukan perhitungan bilangan faktorial secara asinkron.
  - Sampel Input: 5
  - Sampel Output: 120
*/

import 'dart:io';

void main(List<String> args) async {
  soalSatu();
  soalDua();

  int hasil = await hitungFaktorial(5);
  print('\nOutput: $hasil'); // Output: 120
}

void soalSatu() {
  print('Soal Satu');
  List<List<dynamic>> myList = [
    ["apel", 10],
    ["jeruk", 15],
    ["pisang", 20],
    ["mangga", 5]
  ];

  print(myList);

  Map<String, int> myMap = {};
// untuk mengiterasi setiap elemen dalam list dan menambahkannya ke dalam map
  for (List<dynamic> item in myList) {
    // setiap elemen pada list dijadikan sebagai pasangan key-value pada map tersebut.
    String key = item[0];
    int value = item[1];
    myMap[key] = value;
  }

  print(myMap);
}

void soalDua() {
  print('\nSoal Dua: rata-rata dari sekumpulan nilai');
  // Input nilai
  List<int> nilai = [7, 5, 3, 5, 2, 1];

  // Menghitung total nilai
  int total = nilai.reduce((a, b) => a + b);

  // Menghitung rata-rata dan membulatkannya ke atas
  int rataRata = (total / nilai.length).ceil();

  stdout.write('Input: ');
  print(nilai);
  // Output hasil
  stdout.write('Output: ');
  print(rataRata);
}

Future<int> hitungFaktorial(int n) async {
  print('\nSoal Tiga: bilangan faktorial');
  stdout.write('Input: $n');
  int faktorial = 1;
  for (int i = 2; i <= n; i++) {
    faktorial *= i;
    await Future.delayed(
        Duration(seconds: 1)); // simulasi proses yang membutuhkan waktu
  }
  return faktorial;
}
