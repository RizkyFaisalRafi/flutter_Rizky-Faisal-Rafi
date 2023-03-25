import 'package:flutter/material.dart';
import 'package:flutter_section_16/advance_form/contact_page_advance.dart';
import 'package:flutter_section_16/form/contact_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Form and Advance Form',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ContactPageAdvance(
        title: 'Interactive Widgets',
      ),
    );
  }
}

