// import 'package:flutter/material.dart';
// import 'package:mobile_ui/home_page.dart';

// class HasilPage extends StatelessWidget {
//   final List<Smartphone> results;

//   const HasilPage({
//     required this.results,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Hasil Rekomendasi'),
//       ),
//       body: ListView.builder(
//         itemCount: results.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(results[index].name),
//             subtitle: Text(
//               'Harga: Rp${results[index].price}, Kamera: ${results[index].camera}, Kapasitas Penyimpanan Internal: ${results[index].storage}',
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
