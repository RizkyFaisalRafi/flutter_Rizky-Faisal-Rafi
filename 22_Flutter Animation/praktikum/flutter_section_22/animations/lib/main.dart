import 'package:animations/view/advance_form/contact_page_advance.dart';
import 'package:animations/view/assets/assets_page.dart';
import 'package:animations/view/form/contact_page.dart';
import 'package:animations/view/home/home_page.dart';
import 'package:animations/view/home/splash_screen.dart';
import 'package:flutter/material.dart';

import 'animation/slide_page_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animations',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreenn(),
        '/home-page': (context) => const HomePage(),
        '/contact-page': (context) => const ContactPage(title: 'Contacts'),
        '/contact-page-advance': (context) =>
            const ContactPageAdvance(title: 'Interactive Widgets'),
        '/assets-page': (context) => const AssetsPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/assets-page') {
          return SlidePageRoute(page: const AssetsPage());
        } else if (settings.name == '/contact-page') {
          return SlidePageRoute(
              page: const ContactPage(
            title: 'Contacts',
          ));
        } else if (settings.name == '/contact-page-advance') {
          return SlidePageRoute(
              page: const ContactPageAdvance(
            title: 'Interactive Widgets',
          ));
        }
        return null;
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
