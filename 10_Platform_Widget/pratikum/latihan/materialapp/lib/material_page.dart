import 'package:flutter/material.dart';

//Material
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
    body : ListView(
        children: [
          ListTile(
            leading: Icon(Icons.circle, color: Colors.green),
            title: Text('Leane Graham'),
            subtitle: Text('1-770-736-8031 x56442'),
            onTap: () {
              // Tambahkan aksi ketika ListTile ditekan di sini
            },
          ),
          ListTile(
            leading: Icon(Icons.circle, color: Colors.green),
            title: Text('Ervin Howell'),
            subtitle: Text('010-692-6593 x09125'),
            onTap: () {
              // Tambahkan aksi ketika ListTile ditekan di sini
            },
          ),

          ListTile(
            leading: Icon(Icons.circle, color: Colors.green),
            title: Text('Clementine Bauch'),
            subtitle: Text('1-463-123-4447'),
            onTap: () {
              // Tambahkan aksi ketika ListTile ditekan di sini
            },
          ),

          ListTile(
            leading: Icon(Icons.circle, color: Colors.green),
            title: Text('Patricia Lebsack'),
            subtitle: Text('493-170-9623 x156'),
            onTap: () {
              // Tambahkan aksi ketika ListTile ditekan di sini
            },
          ),

          ListTile(
            leading: Icon(Icons.circle, color: Colors.green),
            title: Text('Chelsey Dietrich'),
            subtitle: Text('(256)954-1289'),
            onTap: () {
              // Tambahkan aksi ketika ListTile ditekan di sini
            },
          ),

          ListTile(
            leading: Icon(Icons.circle, color: Colors.green),
            title: Text('Mrs.Dennis Schulist'),
            subtitle: Text('1-477-935-8478 x6430'),
            onTap: () {
              // Tambahkan aksi ketika ListTile ditekan di sini
            },
          ),

          ListTile(
            leading: Icon(Icons.circle, color: Colors.green),
            title: Text('Kurtis Weissnat'),
            subtitle: Text('210.068.6132'),
            onTap: () {
              // Tambahkan aksi ketika ListTile ditekan di sini
            },
          ),
          // Tambahkan lebih banyak ListTile di sini sesuai kebutuhan
        ],
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