import 'package:flutter/material.dart';
import 'package:state_management_provider/view/advance_form/contact_page_advance.dart';
import 'package:state_management_provider/view/form/contact_page.dart';
import 'package:state_management_provider/view/home/home_page.dart';
import 'package:state_management_provider/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/home-page': (context) => const HomePage(),
        '/contact-page': (context) => const ContactPage(),
        '/contact-page-advance': (context) => const ContactPageAdvance(),
        // '/assets-page': (context) => const AssetsPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
