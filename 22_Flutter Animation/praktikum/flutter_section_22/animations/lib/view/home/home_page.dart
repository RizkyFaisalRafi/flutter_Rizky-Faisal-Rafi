import 'package:animations/animation/slide_page_route.dart';
import 'package:animations/view/advance_form/contact_page_advance.dart';
import 'package:animations/view/assets/assets_page.dart';
import 'package:animations/view/form/contact_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String contactPage = "/contact-page";
    String contactPageAdvance = "/contact-page-advance";
    String assetsPage = "/assets-page";
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
                // Navigator.pushNamed(context, '/contact-page');
                Navigator.pushNamed(context, contactPage);
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
                          /// Animation Transition
                          Navigator.push(
                            context,
                            SlidePageRoute(
                              page: const ContactPage(title: 'Contacts'),
                            ),
                          );
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
                Navigator.pushNamed(context, contactPageAdvance);
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
                          /// Animation Transition
                          Navigator.push(
                            context,
                            SlidePageRoute(
                              page: const ContactPageAdvance(
                                  title: 'Interactive Widgets'),
                            ),
                          );
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
                Navigator.pushNamed(context, assetsPage);
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
                          /// Animation Transition
                          Navigator.push(
                            context,
                            SlidePageRoute(
                              page: const AssetsPage(),
                            ),
                          );
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
