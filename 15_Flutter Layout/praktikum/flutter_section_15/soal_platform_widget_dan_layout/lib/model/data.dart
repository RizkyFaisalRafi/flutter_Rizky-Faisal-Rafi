// buat data class yang akan menjadi blueprint objek Datanya
class Data {
  String initKontak;
  String nameKontak;
  String numberTelp;

  Data({
    required this.initKontak,
    required this.nameKontak,
    required this.numberTelp,
  });
}

var dataList = [
  Data(
      initKontak: 'L',
      nameKontak: 'Leanne Graham',
      numberTelp: '1-770-736-8031 x56442'),
  Data(
      initKontak: 'E',
      nameKontak: 'Ervin Howell',
      numberTelp: '010-693-123-4447'),
  Data(
      initKontak: 'C',
      nameKontak: 'Clementine Bauch',
      numberTelp: '1-463-123-4447'),
  Data(
      initKontak: 'P',
      nameKontak: 'Patricia Lebsack',
      numberTelp: '493-170-9623 x156'),
  Data(
      initKontak: 'C',
      nameKontak: 'Chelsey Dietrich',
      numberTelp: '(254)954-1289'),
  Data(
      initKontak: 'M',
      nameKontak: 'Mrs. Dennis Schulist',
      numberTelp: '1-477-935-8478 x6430'),
  Data(
      initKontak: 'K',
      nameKontak: 'Kurtis Weissnat',
      numberTelp: '210.067.6132'),
];
