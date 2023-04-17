import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'advance_form/screen/contact_advance/contact_page_advance.dart';
import 'advance_form/screen/contact_advance/contact_page_advance_provider.dart';
import 'latihan/screen/contact/contact_screen.dart';
import 'latihan/screen/contact/contact_view_model.dart';

void main() {
  runApp(
    /// Tugas Form
    // ChangeNotifierProvider<ContactPageProvider>(
    //   create: (context) => ContactPageProvider(),
    //   child: const MyApp(),
    // ),

    // /// Tugas Advance Form
    // ChangeNotifierProvider<ContactPageAdvanceProvider>(
    //   create: (_) => ContactPageAdvanceProvider(),
    //   child: const MyApp(),
    // ),

    // Latihan
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
      // home: const ContactPageAdvance(),
    );
  }
}
