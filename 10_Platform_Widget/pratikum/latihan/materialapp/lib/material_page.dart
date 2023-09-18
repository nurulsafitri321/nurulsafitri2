// 

//Cupertino

import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('CupertinoApp'),
      ),
      child: ListView(
        children: <Widget>[
          CupertinoListTile(
            leading: Icon(CupertinoIcons.circle_filled, color: CupertinoColors.systemGreen),
            title: Text('Leane Graham'),
            subtitle: Text('1-770-736-8031 x56442'),
            onTap: () {
              // Tambahkan aksi ketika ListTile ditekan di sini
            },
          ),
          CupertinoListTile(
            leading: Icon(CupertinoIcons.circle_filled, color: CupertinoColors.systemGreen),
            title: Text('Ervin Howell'),
            subtitle: Text('010-692-6593 x09125'),
            onTap: () {
              // Tambahkan aksi ketika ListTile ditekan di sini
            },
          ),
          CupertinoListTile(
            leading: Icon(CupertinoIcons.circle_filled, color: CupertinoColors.systemGreen),
            title: Text('Clementine Bauch'),
            subtitle: Text('1-463-123-4447'),
            onTap: () {
              // Tambahkan aksi ketika ListTile ditekan di sini
            },
          ),
          CupertinoListTile(
            leading: Icon(CupertinoIcons.circle_filled, color: CupertinoColors.systemGreen),
            title: Text('Patricia Lebsack'),
            subtitle: Text('493-170-9623 x156'),
            onTap: () {
              // Tambahkan aksi ketika ListTile ditekan di sini
            },
          ),
          CupertinoListTile(
            leading: Icon(CupertinoIcons.circle_filled, color: CupertinoColors.systemGreen),
            title: Text('Chelsey Dietrich'),
            subtitle: Text('(256)954-1289'),
            onTap: () {
              // Tambahkan aksi ketika ListTile ditekan di sini
            },
          ),
          CupertinoListTile(
            leading: Icon(CupertinoIcons.circle_filled, color: CupertinoColors.systemGreen),
            title: Text('Mrs. Dennis Schulist'),
            subtitle: Text('1-477-935-8478 x6430'),
            onTap: () {
              // Tambahkan aksi ketika ListTile ditekan di sini
            },
          ),
          CupertinoListTile(
            leading: Icon(CupertinoIcons.circle_filled, color: CupertinoColors.systemGreen),
            title: Text('Kurtis Weissnat'),
            subtitle: Text('210.068.6132'),
            onTap: () {
              // Tambahkan aksi ketika ListTile ditekan di sini
            },
          ),
          // Tambahkan lebih banyak CupertinoListTile di sini sesuai kebutuhan
        ],
      ),
      bottomNavigationBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
