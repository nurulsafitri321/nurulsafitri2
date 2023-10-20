import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _price = 2000000;
  String _camera = "50MP";
  int _storage = 128;

  Future<List<Smartphone>> getSmartphones() async {
    final url =
        'https://api.openai.com/v1/engines/davinci/completions';
    final params = {
      'prompt': 'Cari smartphone dengan harga $_price, kamera $_camera, dan kapasitas penyimpanan internal $_storage',
      'temperature': 0.5,
      'max_tokens': 100,
    };

    final response = await http.post(url,json params);
    final data = response.json();

    final results = <Smartphone>[];
    for (final item in data['choices']) {
      results.add(Smartphone(
        name: item['text'].split(' ')[0],
        price: item['text'].split(' ')[1],
        camera: item['text'].split(' ')[2],
        storage: item['text'].split(' ')[3],
      ));
    }

    return results;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rekomendasi Smartphone'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Harga',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                _price = int.parse(value);
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Kamera',
              ),
              keyboardType: TextInputType.text,
              onChanged: (value) {
                _camera = value;
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Kapasitas Penyimpanan Internal',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                _storage = int.parse(value);
              },
            ),
            TextButton(
              onPressed: () async {
                final results = await getSmartphones();

                // Tampilkan hasil
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HasilPage(results: results),
                  ),
                );
              },
              child: Text('Dapatkan Rekomendasi'),
            ),
          ],
        ),
      ),
    );
  }
}

class Smartphone {
  final String name;
  final int price;
  final String camera;
  final int storage;

  Smartphone({
    required this.name,
    required this.price,
    required this.camera,
    required this.storage,
  });
}
