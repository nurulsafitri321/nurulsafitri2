import 'package:bottomsheet_provider/models/task_controller.dart';
import 'package:bottomsheet_provider/screens/task_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Implementasi Provider pada Controller App',
        theme: ThemeData(),
        home: const TaskScreen(),
      ),
    );
  }
}