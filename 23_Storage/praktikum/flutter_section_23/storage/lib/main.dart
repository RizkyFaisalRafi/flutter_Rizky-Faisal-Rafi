import 'package:flutter/material.dart';
import 'package:flutter_section_23/task_management_lanjutan/models/db_manager.dart';
import 'package:flutter_section_23/task_management_lanjutan/screens/login_screen.dart';
import 'package:flutter_section_23/task_management_lanjutan/screens/task_screen.dart';
import 'package:provider/provider.dart';

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
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const LoginScreen(),
          '/taskScreen': (context) => const TaskScreen(),
        },
      ),
    );
  }
}
