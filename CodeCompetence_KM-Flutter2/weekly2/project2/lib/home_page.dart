import 'package:flutter/material.dart';
import 'package:project2/home.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 106, 230, 102),
        leading: IconButton(
          icon: Image.asset('assets/wa.png'),
          onPressed: () {},
        ),
      ),
      endDrawer: const MyRightSidebar(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(12),
          child: const SingleChildScrollView(
            child: Column(
              children: [
                Welcome(),
                MyWidget(),
                Text(
                  'About Us',
                ),
                Text(
                  'Mobile with Framework Flutter ',
                  
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomCard(
                      judul: 'Flutter',
                      icon: Icons.flutter_dash_sharp,
                      text:
                          'Flutter adalah framework pengembangan aplikasi mobile lintas platform yang dikembangkan oleh Google. Dengan Flutter, developer dapat membuat aplikasi untuk Android, iOS, web, desktop, dan Linux dengan satu codebase.Flutter menggunakan bahasa pemrograman Dart yang mudah dipelajari dan digunakan. Flutter juga memiliki fitur-fitur yang canggih, seperti hot reload, yang memungkinkan developer untuk melihat perubahan kode secara langsung di aplikasi..',
                    ),
                    CustomCard(
                      judul: 'Kelebihan Flutter',
                      icon: Icons.plus_one_rounded,
                      text:
                          'Lintas platform: Flutter memungkinkan developer untuk membuat aplikasi untuk berbagai platform dengan satu codebase.Mudah dipelajari: Flutter menggunakan bahasa pemrograman Dart yang mudah dipelajari dan digunakan.Fitur canggih: Flutter memiliki fitur-fitur yang canggih, seperti hot reload.Performa tinggi: Flutter menghasilkan aplikasi dengan kinerja yang tinggi..',
                    ),
                  ],
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}