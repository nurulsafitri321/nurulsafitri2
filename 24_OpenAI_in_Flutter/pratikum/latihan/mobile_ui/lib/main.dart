import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_ui/halaman_hasil.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Smartphone',
      home: HomePage(),
      routes: {
        '/hasil': (context) => HasilPage(),
      },
    );
  }
}
