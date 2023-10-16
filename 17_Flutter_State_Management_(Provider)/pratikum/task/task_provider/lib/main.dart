import 'package:flutter/material.dart';
import 'aad_contact.dart';
import 'contact.dart';
import 'actor.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => Contact()),
    ChangeNotifierProvider(create: (_) => User()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 184, 231, 12)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'State Management Provider'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<Contact>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const AddContacts()));
        },
        child: const Icon(Icons.add),
      ),
    
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'WELCOME',
            style: TextStyle(fontSize: 45, color: Color.fromARGB(255, 100, 202, 74)),
          ),
          SizedBox(
            height: 25,
          ),
          Icon(
            Icons.contact_phone_rounded,
            color: Color.fromARGB(255, 107, 200, 104),
            size: 65,
          ),
        ],
      )),
    );
  }
}