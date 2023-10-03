import 'package:flutter/material.dart';
import 'image_action.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 196, 4),
        title: const Text('List Galeri'),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 248, 255, 152),
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/gridview');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 248, 153, 10),
              ),
              child: const Text(
                'Galeri',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/contact');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 248, 153, 10),
              ),
              child: const Text(
                'Contact',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      body: const ImageGridView(),
    );
  }
}