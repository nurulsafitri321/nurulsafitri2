import 'package:flutter/material.dart';

class DetailImagePage extends StatelessWidget {
  final String imagePath;
  const DetailImagePage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 241, 218, 2),
        title: const Text('Detail Image'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 236, 196, 15),
                ),
                child: const Text('Kembali'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}