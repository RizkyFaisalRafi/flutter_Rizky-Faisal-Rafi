# Resume Section 21 Introduction REST API - JSON serialization/deserialization

# Materi – Introduction REST API – JSON serialization/deserialization

> Rest API
- REST API  kepanjangan dari Representational State Transfer Application Programming Interface
- Arsitektur yang memisahkan tampilan dengan proses bisnis
- Bagian tampilan dengan proses bisnis berkirim data melalui HTTP Request
![Cuplikan layar 2023-04-07 015348](https://user-images.githubusercontent.com/87520408/230470156-4b176728-5080-4d84-95c8-adf6f3e7527f.png)


> HTTP
- Protokol yang digunakan untuk berkirim data pada internet, biasanya data tersebut berbentuk media web
- Pola Komunikasi: Client mengirim request dan Server mengolah dan membalas dengan memberi response

- Struktur Request: URL(Alamat halaman yang akan disimpan), Method GET, POST, PUT, DELETE(Menunjukan aksi yang diinginkan), Header(Informasi tambahan terkait request yang dikirimkan), Body(Data yang disertakan bersama request)

- Struktur Response: Status Code(Kode yang mewakili keseluruhan response, baik sukses maupun gagal), Header(Informasi tambahan terkait response yang diberikan), Body(Data yang disertakan bersama response)

> Package Dio
- Sebagai HTTP Client dan dimanfaatkan untuk REST API
- Tambahkan package dio pada pubspec.yaml dari pub.dev(https://pub.dev/packages/dio)

> Serialisasi JSON
- JSON: Cara penulisan Data, kepanjangan dari Javascript Object Notation dan umum digunakan pada REST API
- Serialisasi JSON yaitu mengubah struktur data ke bentuk JSON menggunakan fungsi jsonEncode dari package dart:convert
![Cuplikan layar 2023-04-07 020825](https://user-images.githubusercontent.com/87520408/230472408-8c77f9ee-4d5b-4ef7-b85e-6709d7df6de5.png)

- Deserialisasi JSON yaitu mengubah bentuk JSON ke struktur data menggunakan fungsi jsonDecode dari package dart:convert
![Cuplikan layar 2023-04-07 021020](https://user-images.githubusercontent.com/87520408/230472863-19a1b307-8e94-4492-8f59-d1d27d82ea32.png)