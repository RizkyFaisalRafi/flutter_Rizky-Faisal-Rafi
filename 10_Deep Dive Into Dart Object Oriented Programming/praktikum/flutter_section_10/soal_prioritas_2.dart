void main(List<String> args) {
  KelipatanPersekutuanTerkecil operationKPK =
      KelipatanPersekutuanTerkecil(8, 8);
  FaktorPersekutuanTerbesar operationFPB = FaktorPersekutuanTerbesar(12, 8);

  print(
      'KPK dari ${operationKPK.x} dan ${operationKPK.y} adalah ${operationKPK.hasil()}');
  print(
      'FPB dari ${operationFPB.x} dan ${operationFPB.y} adalah ${operationFPB.hasil()}');
}

class Matematika {
  int hasil() => 0;
}

class KelipatanPersekutuanTerkecil implements Matematika {
  late int x, y;
  KelipatanPersekutuanTerkecil(this.x, this.y);

  @override
  int hasil() {
    final fpb = FaktorPersekutuanTerbesar(x, y);
    int hasilFPB = fpb.hasil();
    // kpk = (a * b) ~/ FPB
    return (x * y) ~/ hasilFPB; // '~/' adalah pembagian hasil integer
  }
}

class FaktorPersekutuanTerbesar implements Matematika {
  late int x, y;
  FaktorPersekutuanTerbesar(this.x, this.y);

  @override
  int hasil() {
    // FPB Algoritma Euclidean
    int a, b, fpb;
    a = x;
    b = y;
    fpb = 0;
    while (b != 0) {
      fpb = b;
      b = a % b;
      a = fpb;
    }

    return fpb;
  }
}
