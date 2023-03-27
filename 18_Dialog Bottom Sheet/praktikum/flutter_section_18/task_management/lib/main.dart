import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/models/task_manager.dart';
import 'package:task_management/screens/task_screen.dart';

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
          create: (context) => TaskManager(),
        )
      ],
      child: MaterialApp(
        title: 'Task Management',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const TaskScreen(),
      ),
    );
  }
}
