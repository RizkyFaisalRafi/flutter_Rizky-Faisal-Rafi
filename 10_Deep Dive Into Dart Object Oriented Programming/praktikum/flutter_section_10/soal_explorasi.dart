// Buat class beserta interface sesuai dengan class diagram.
// Method getArea() digunakan untuk menghitung luas bangun datar.
// Method getPerimeter() digunakan untuk menghitung keliling bangun datar.
// Output yang harus ditampilkan adalah luas dan keliling untuk tiga bangun datar berdasarkan di class diagram.

void main(List<String> args) {
  print('Luas dan Keliling Lingkaran');
  Circle circle = Circle(10);
  print('Luas dari Side(${circle.radius}) = ${circle.getArea()}');
  print('Keliling dari Side(${circle.radius}) = ${circle.getPerimeter()}');

  print('\nLuas dan Keliling Persegi');
  Square square = Square(10);
  print('Luas dari Side(${square.side}) = ${square.getArea()}');
  print('Keliling dari Side(${square.side}) = ${square.getPerimeter()}');

  print('\nLuas dan Keliling Persegi Panjang');
  Rectangle rectangle = Rectangle(4, 2);
  print(
      'Luas dari Width(${rectangle.width}) dan Height(${rectangle.height}) = ${rectangle.getArea()}');
  print(
      'Keliling dari Width(${rectangle.width}) dan Height(${rectangle.height}) = ${rectangle.getPerimeter()}');
}

class Shape {
  int getArea() => 0;
  int getPerimeter() => 0;
}

class Circle implements Shape {
  late int radius;
  final double phi = 3.14;
  Circle(this.radius);

  // Luas Lingkaran
  @override
  int getArea() {
    double luasLingkaran = phi * radius * radius; // Rumus luas Lingkaran
    return luasLingkaran.floor(); // Floor = Pembulatan kebawah
  }

  // Keliling Lingkaran
  @override
  int getPerimeter() {
    double kelilingLingkaran = 2 * phi * radius; // Rumus keliling Lingkaran
    return kelilingLingkaran.floor(); // Floor = Pembulatan kebawah
  }
}

class Square implements Shape {
  late int side;
  Square(this.side);
  // Luas Persegi
  @override
  int getArea() {
    int luasPersegi = side * side; // Rumus luas Persegi
    return luasPersegi;
  }

  // Keliling Persegi
  @override
  int getPerimeter() {
    int kelilingPersegi = 4 * side; // Rumus keliling Persegi
    return kelilingPersegi;
  }
}

class Rectangle implements Shape {
  late int width, height;
  Rectangle(this.width, this.height);
  // Luas persegi panjang
  @override
  int getArea() {
    int luasPersegiPanjang = width * height; // Rumus luas Persegi Panjang
    return luasPersegiPanjang;
  }

  // Keliling persegi panjang
  @override
  int getPerimeter() {
    int kelilingPersegiPanjang =
        2 * (width + height); // Rumus keliling Persegi Panjang
    return kelilingPersegiPanjang;
  }
}
