/*
* Sebuah toko buku ingin mengembangkan sebuah sistem untuk mengelola data buku.
* Data buku tersebut terdiri dari ID, judul, penerbit, harga dan kategori.
* Sistem tersebut dapat menambahkan, mendapatkan semua data buku dan
* menghapus data buku. Buatlah program berdasarkan skenario tersebut.
*/

void main(List<String> args) {
  BookStore bookStore = BookStore();

  // Menambahkan beberapa buku
  bookStore.addBook(
      "001", "Programming Dart", "by John Doe", 200.000, "Programming");
  bookStore.addBook(
      "002", "Programming Web", "by Ricardo", 150.000, "Programming");
  bookStore.addBook(
      "003", "Programming Android", "by RIFARA", 240.000, "Programming");

  // Mendapatkan semua buku
  List<Book> allBooks = bookStore.getAllBooks();
  print("Semua Buku:");
  for (Book book in allBooks) {
    print(
        "- ${book.judul} ${book.penerbit} (${book.kategori}): Rp.${book.harga.toStringAsFixed(3)}");
  }

  // Menghapus buku berdasarkan id
  bookStore.removeBook("002");
  print('\nBuku Dihapus id: 002');

  // Mendapatkan Semua buku setelah dihapus
  allBooks = bookStore.getAllBooks();
  print("\nSemua buku setelah dihapus:");
  for (Book book in allBooks) {
    print(
        "- ${book.judul} ${book.penerbit} (${book.kategori}): Rp.${book.harga.toStringAsFixed(3)}");
  }
}

class Book {
  String id;
  String judul;
  String penerbit;
  double harga;
  String kategori;

  Book(this.id, this.judul, this.penerbit, this.harga, this.kategori);
}

class BookStore {
  final List<Book> _books = [];

  // Tambah Buku
  void addBook(String id, String title, String publisher, double price,
      String category) {
    _books.add(Book(id, title, publisher, price, category));
  }

  // Mendapatkan Semua Buku
  List<Book> getAllBooks() {
    return _books;
  }

  // Hapus Buku
  void removeBook(String id) {
    _books.removeWhere((book) => book.id == id);
  }
}
