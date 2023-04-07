import 'package:flutter/material.dart';
import 'package:flutter_section_23/explorasi/assets/assets_page.dart';
import 'package:flutter_section_23/explorasi/assets/splash_screen.dart';
import 'package:flutter_section_23/task_management_lanjutan/models/db_manager.dart';
import 'package:flutter_section_23/task_management_lanjutan/screens/login_screen.dart';
import 'package:flutter_section_23/task_management_lanjutan/screens/task_screen.dart';
import 'package:provider/provider.dart';

import 'explorasi/advance_form/contact_page_advance.dart';
import 'explorasi/form/contact_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DbManager(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Storage',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashScreenn(),
          '/loginScreen': (context) => const LoginScreen(),
          '/taskScreen': (context) => const TaskScreen(),
          // '/homePage': (context) => const HomePage(),
          '/contact-page': (context) => const ContactPage(title: 'Contacts'),
          '/contact-page-advance': (context) =>
              const ContactPageAdvance(title: 'Interactive Widgets'),
          '/assetsPage': (context) => const AssetsPage(),
        },
      ),
    );
  }
}
