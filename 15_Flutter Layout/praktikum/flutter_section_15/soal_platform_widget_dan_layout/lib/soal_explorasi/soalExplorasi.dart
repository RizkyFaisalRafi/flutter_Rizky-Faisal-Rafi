import 'package:flutter/material.dart';

import '../model/dataLearnProgramming.dart';

class SoalExplorasi extends StatelessWidget {
  const SoalExplorasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soal Explorasi',
      theme: ThemeData.light(),
      home: const LearnProgramming(),
    );
  }
}

class LearnProgramming extends StatelessWidget {
  const LearnProgramming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF6200EE);
    const secondaryColor = Color(0xFF03DAC5);
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Flutter App'),
        centerTitle: true,
        backgroundColor: primaryColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),

      /// builder: widget berdasarkan data local yang diberikan.
      body: ListView.builder(
        itemBuilder: (context, index) {
          final DataLearnProgramming dataProgramming =
              dataProgrammingList[index];
          return InkWell(
            /// Menambahkan interaksi pengguna
            onTap: () {},
            child: ListTile(
              title: Text(dataProgramming.programming),
            ),
          );
        },
        itemCount: dataProgrammingList.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: secondaryColor,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF6200EE),
        items: const <BottomNavigationBarItem>[
          // Home
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_rounded),
            label: 'Information',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
