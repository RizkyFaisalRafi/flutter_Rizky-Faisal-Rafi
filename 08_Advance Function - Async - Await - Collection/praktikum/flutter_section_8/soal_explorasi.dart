/*
Soal Eksplorasi

1. Buatlah sebuah program untuk menghilangkan nilai atau data yang sama pada 
  sebuah data sehingga output akhirnya adalah sekumpulan nilai atau data yang unik.
Sampel Input: [amuse, tommy kaira, spoon, HKS, litchfield, amuse, HKS]
Sampel Output: [amuse, tommy kaira, spoon, HKS, litchfield]

Sampel Input: [JS Racing, amuse, spoon, spoon, JS Racing, amuse]
Sampel Output: [JS Racing, amuse, spoon]

2. Buatlah sebuah program untuk menghitung frekuensi pada setiap data di dalam 
sebuah list. Frekuensi merupakan jumlah kemunculan data di dalam list.
Sampel Input: [js,js,js,golang,python,js,js,golang,rust]
Sampel Output: js: 5, golang: 2, python: 1, rust: 1
*/

void main(List<String> args) {
  satu();
  print('');
  dua();
}

void satu() {
  print('Soal 1: program menghilangkan nilai atau data yang sama');
  var data = <String>[
    'amuse',
    'tommy kaira',
    'spoon',
    'HKS',
    'litchfield',
    'amuse',
    'HKS'
  ];
  // Menghapus nilai sama dengan set dari variabel data.
  var uniqueData = List<String>.from(Set<String>.from(data));
  print('Input: $data');
  print('Output: $uniqueData');
}

void dua() {
  print('Soal 2: program untuk menghitung frekuensi');
  List<String?> data = [
    'js',
    'js',
    'js',
    'golang',
    'python',
    'js',
    'js',
    'golang',
    'rust'
  ];
  Map? freq = {};

  for (var item in data) {
    if (freq.containsKey(item)) {
      freq[item] += 1;
    } else {
      freq[item] = 1;
    }
  }

  freq.forEach((key, value) {
    print('$key: $value');
  });
}
