import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_bloc/bloc/galery/galery_bloc.dart';
import 'package:state_bloc/bloc/galery/galery_event.dart';
import 'package:state_bloc/bloc/galery/galery_state.dart';
import 'package:state_bloc/main.dart';


class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  // Daftar nama file gambar
  final List<String> images = [
    'images/na3.jpeg',
    'images/na7.jpeg',
    'images/na8.jpg',
    'images/na9.jpg',
  ];

  String selectedImage = '';

  blocListenerGallery({required Widget child}) {
    return BlocListener(
        bloc: context.read<GalleryBloc>(),
        child: child,
        listener: (context, state) {
          if (state is ShowGalleryState) {
            _navigateToNewPage(state.selectedImage); // Navigasi ke halaman baru
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return blocListenerGallery(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'Assets',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xff816EB3),
        ),
        drawer: const MyDrawer(),
        body: SafeArea(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: images.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedImage = images[index];
                  });
                  // Memanggil fungsi untuk menampilkan bottom sheet saat gambar di tap
                  _showBottomSheet(images[index]);
                },
                child: Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    // Mengambil gambar dari assets dengan nama tertentu
                    'assets/${images[index]}',
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  // Menampilkan bottom sheet sebagai dialog modal
  void _showBottomSheet(String imageUrl) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Image.asset(
                'assets/$imageUrl',
                fit: BoxFit.cover,
              ),
            ),
            const Text('Lihat detail gambar?'),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Menutup bottom sheet
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: const Color(0xff816EB3),
                  ),
                  child: const Text(
                    'Tidak',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Menutup bottom sheet
                    context.read<GalleryBloc>().add(
                          AddGalleryEvent(
                            selectedImage: imageUrl,
                          ),
                        );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: const Color(0xff816EB3),
                  ),
                  child: const Text(
                    'Ya',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
          ],
        );
      },
    );
  }

  // Navigasi ke halaman baru dengan membawa data gambar (imageUrl)
  void _navigateToNewPage(String imageUrl) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewPage(
            imageUrl: imageUrl), // Membuat halaman baru dengan data gambar
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  final String imageUrl;

  const NewPage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Detail Gambar',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff816EB3),
      ),
      body: Center(
        child: Image.asset(
          'assets/$imageUrl',
          fit: BoxFit.contain, // Mengatur tampilan gambar di halaman detail
        ),
      ),
    );
  }
}