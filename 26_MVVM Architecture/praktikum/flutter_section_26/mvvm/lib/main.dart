import 'package:flutter/material.dart';
// import 'package:mvvm/form/contact_page.dart';
// import 'package:mvvm/form/contact_page_provider.dart';
import 'package:mvvm/latihan/screen/contact/contact_view_model.dart';
import 'package:provider/provider.dart';

import 'latihan/screen/contact/contact_screen.dart';

void main() {
  runApp(
    /// Tugas
    // ChangeNotifierProvider<ContactPageProvider>(
    //   create: (context) => ContactPageProvider(),
    //   child: const MyApp(),
    // ),

    /// Latihan
    ChangeNotifierProvider<ContactViewModel>(
      create: (_) => ContactViewModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const ContactPage(title: 'Contacts'),
      home: const ContactScreen(),
    );
  }
}
