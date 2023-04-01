import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(12.0),
          children: [
            Center(
              heightFactor: 2,
              child: Text(
                'Pilih Menu Halaman',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                Navigator.pushNamed(context, '/contact-page');
              },
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text(
                      'F',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: const Text('Flutter Form'),
                  subtitle: const Text('Section 16 Flutter Form'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.keyboard_arrow_right),
                        onPressed: () {
                          Navigator.pushNamed(context, '/contact-page');
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                Navigator.pushNamed(context, '/contact-page-advance');
              },
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text(
                      'F',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: const Text('Flutter Advance Form'),
                  subtitle: const Text('Section 16 Advance Form'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.keyboard_arrow_right),
                        onPressed: () {
                          Navigator.pushNamed(context, '/contact-page-advance');
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                Navigator.pushNamed(context, '/assets-page');
              },
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text(
                      'A',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: const Text('Assets'),
                  subtitle: const Text('Section 17 Assets'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.keyboard_arrow_right),
                        onPressed: () {
                          Navigator.pushNamed(context, '/assets-page');
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
