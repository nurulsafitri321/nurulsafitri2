import 'package:bottom_sheet/models/task_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // TODO 4: Add Provider package
    // TODO 6: Adding TaskManager sebagai provider
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TaskManager(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Task Management',
        home: TaskScreen(),
      ),
    );
  }
}
