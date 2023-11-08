// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: HomePage(),
//   ));
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Rekomendasi Smartphone"),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               "Halaman Utama",
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Form(
//               child: Column(
//                 children: [
//                   NumberFormField(
//                     decoration: InputDecoration(
//                       labelText: "Budget (IDR)",
//                     ),
//                     keyboardType: TextInputType.number,
//                   ),
//                   TextFormField(
//                     decoration: InputDecoration(
//                       labelText: "Resolusi Kamera (MP)",
//                     ),
//                   ),
//                   TextFormField(
//                     decoration: InputDecoration(
//                       labelText: "Kapasitas Penyimpanan Internal (GB)",
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             ElevatedButton(
//               child: Text("Dapatkan Rekomendasi"),
//               onPressed: () {},
//             ),
//           ],
//         ),
//       ),
//     );
//   }
  
//   NumberFormField({required InputDecoration decoration, required TextInputType keyboardType}) {}
// }
