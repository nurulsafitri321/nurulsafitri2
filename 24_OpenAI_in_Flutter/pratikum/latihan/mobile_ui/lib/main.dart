// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:mobile_ui/halaman_hasil.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'rekomendasi smartphone',
      home: PhoneRecommendation(),
    );
  }
}





// import 'home_page.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Rekomendasi Smartphone',
//       home: HomePage(),
//       routes: {
//         '/hasil': (context) => HasilPage(),
//       },
//     );
//   }
// }
