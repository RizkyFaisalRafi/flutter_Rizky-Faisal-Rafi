import 'package:flutter/material.dart';

import '../model/data.dart';

// Soal Prioritas 1 Nomor 2
class NomorDua extends StatelessWidget {
  const NomorDua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const ListVieww(),
    );
  }
}

class ListVieww extends StatelessWidget {
  const ListVieww({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFECEC),
      // ganti warna sesuai keinginan
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Setting'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Material App'),
      ),

      /// builder: widget berdasarkan data local yang diberikan.
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Data data = dataList[index];
          return InkWell(
            /// Menambahkan interaksi pengguna
            onTap: () {},
            child: Container(
                width: 80,
                height: 80,
                color: Colors.transparent, // Transparant
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 18, right: 20),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(data.initKontak, // Inisial Kontak
                            style: const TextStyle(
                                fontSize: 28, color: Colors.white)),
                      ),
                    ),
                    // Textnya
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          data.nameKontak,
                          style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        Text(
                          data.numberTelp,
                          style: const TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                )),
          );
        },
        itemCount: dataList.length,
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          // Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
        selectedItemColor: Colors.cyan,
      ),
    );
  }
}
