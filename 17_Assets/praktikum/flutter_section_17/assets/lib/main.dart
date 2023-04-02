import 'package:assets/advance_form/contact_page_advance.dart';
import 'package:assets/form/contact_page.dart';
import 'package:assets/ui/assets_page.dart';
import 'package:assets/ui/home_page.dart';
import 'package:assets/ui/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assets',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreenn(),
        '/home-page': (context) => const HomePage(),
        '/contact-page': (context) => const ContactPage(title: 'Contacts'),
        '/contact-page-advance': (context) => const ContactPageAdvance(title: 'Interactive Widgets'),
        '/assets-page': (context) => const AssetsPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
