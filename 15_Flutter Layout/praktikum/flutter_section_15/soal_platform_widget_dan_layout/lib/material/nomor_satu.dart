import 'package:flutter/material.dart';

class NomorSatu extends StatelessWidget {
  const NomorSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soal Prioritas 1, Nomor 1',
      theme: ThemeData.dark(),
      home: const BottomNavigasiBar(
        title: 'MaterialApp',
      ),
    );
  }
}

class BottomNavigasiBar extends StatefulWidget {
  const BottomNavigasiBar({super.key, required this.title});

  final String title;

  @override
  State<BottomNavigasiBar> createState() => _BottomNavigasiBarState();
}

class _BottomNavigasiBarState extends State<BottomNavigasiBar> {
  int selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('This is MaterialApp'),
    Text('This is MaterialApp'),
  ];

  /// untuk mengubah nilai currentIndex ke indeks item yang baru terpilih
  /// kemudian memperbarui tampilan dengan memanggil fungsi setState()
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text(widget.title),
      ),
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
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

        /// menentukan indeks item yang saat ini terpilih di bilah navigasi bawah
        currentIndex: selectedIndex,
        selectedItemColor: Colors.cyan,

        onTap: _onItemTapped,
      ),
    );
  }
}
