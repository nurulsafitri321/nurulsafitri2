import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaterialApp'),
      ),

    drawer: Drawer(
      child: ListView(
        children: const [
          ListTile(title: Text("Home")),
          ListTile(title: Text("TextSetting"))
        ],
      ),
    ),
    body: 
    const Center(
        child: Text('this is MaterialApp'),   
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
      ],
    ),
    );
  }
}