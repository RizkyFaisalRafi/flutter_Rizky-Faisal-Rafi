import 'package:flutter/material.dart';
import 'package:form_and_advance_form_input/advance_form/contact_page_advance.dart';
import 'package:form_and_advance_form_input/form/contact_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
