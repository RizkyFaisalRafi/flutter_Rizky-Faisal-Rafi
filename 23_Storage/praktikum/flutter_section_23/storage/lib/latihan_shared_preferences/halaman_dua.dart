import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'halaman_satu.dart';

class HalamanDua extends StatefulWidget {
  const HalamanDua({super.key});

  @override
  State<HalamanDua> createState() => _HalamanDuaState();
}

class _HalamanDuaState extends State<HalamanDua> {
  late SharedPreferences logindata;
  String username = '';

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username').toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Dua'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Selamat Datang'),
            const SizedBox(
              height: 20,
            ),
            Text(username),
            ElevatedButton(
              onPressed: () {
                logindata.setBool('login', true);
                logindata.remove('username');
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HalamanSatu(),
                  ),
                );
              },
              child: const Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}
