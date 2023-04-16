# Resume Section 27 Finite State Machine & Unit Testing

> Finite State Machine
- Finite State Machine adalah Mesin yang memiliki sejumlah state
- Tiap state menunjukan apa yang terjadi sebelumnya

> Contoh Terdapat 3 state yang menunjukan kejadian dalam suatu proses.
- IDDLE saat tidak terjadi proses apa apa
- RUNNING saat proses sedang berjalan
- ERROR saat proses gagal diselesaikan

> Contoh Sukses
- IDDLE berubah menjadi RUNNING saat proses berjalan
- RUNNING kembali menjadi IDDLE saat proses selesai

> Contoh Gagal
- IDDLE berubah menjadi RUNNING saat proses berjalan
- RUNNING menjadi ERROR saat terjadi kegagalan
- ERROR kembali menjadi IDDLE

> Unit Test
- Unit Test adalah salah satu jenis pengujian pada proses pengembangan perangkat lunak
- Pengujian dilakukan pada unit dalam perangkat lunak
- Unit yang dimaksud umumnya adalah fungsi atau method 

> Tujuan Unit Test
- Untuk memastikan fungsi dapat mengolah berbagai jenis input
- Untuk memastikan hasil dari suatu fungsi atau method sudah sesuai
- Untuk menjadi dokumentasi

> 2 Cara melakukan Unit Test
- Manual yaitu Unit dijalankan dan dicek hasilnya secara manual
- Automated yaitu Menulis Script yang dapat dijalankan berkali kali menggunakan test runner(Tambahkan Dependencies test didalam dev_dependencies: https://pub.dev/packages/test/install)

> Test Group
- Beberapa test dengan subjek yang sama diletakan dalam sebuah kelompok
- Dilakukan dengan menggunakan Group

> Mocking
- Proses yang terikat dengan sistem eksternal dapat mempengaruhi berjalannya pengujian
- Pengaruh tersebut dapat mengganggu proses pengujian
- Dilakukan mocking untuk menghindari masalah masalah tersebut
- Tambahkan Dependencies Mockito didalam dev_dependencies: https://pub.dev/packages/mockito/install