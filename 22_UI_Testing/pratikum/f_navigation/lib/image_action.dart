import 'package:flutter/material.dart';

import 'detail_image.dart';

class ImageGridView extends StatelessWidget {
  const ImageGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: [
          // ElevatedButton(
          //   onPressed: () {
          //     _showImageBottomSheet(context, 'assets/kupu.jepg');
          //   },
          //   style: ElevatedButton.styleFrom(
          //     padding: const EdgeInsets.all(2),
          //   ),
          //   child: Ink.image(
          //     image: const AssetImage('assets/kupu.jpeg'),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          ElevatedButton(
            onPressed: () {
              _showImageBottomSheet(context, 'assets/kupu.jpeg');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(2),
            ),
            child: Ink.image(
              image: const AssetImage('assets/kupu.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showImageBottomSheet(context, 'assets/kupu.jpeg');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(2),
            ),
            child: Ink.image(
              image: const AssetImage('assets/kupu.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showImageBottomSheet(context, 'assets/oyn.jpg');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(2),
            ),
            child: Ink.image(
              image: const AssetImage('assets/kupu.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showImageBottomSheet(context, 'assets/kupu.jpeg');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(2),
            ),
            child: Ink.image(
              image: const AssetImage('assets/kupu.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showImageBottomSheet(context, 'assets/kupu.jpeg');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(2),
            ),
            child: Ink.image(
              image: const AssetImage('assets/kupu.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showImageBottomSheet(context, 'assets/kupu.jpeg');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(2),
            ),
            child: Ink.image(
              image: const AssetImage('assets/kupu.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showImageBottomSheet(context, 'assets/kupu.jpeg');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(2),
            ),
            child: Ink.image(
              image: const AssetImage('assets/kupu.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showImageBottomSheet(context, 'assets/kupu.jpeg');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(2),
            ),
            child: Ink.image(
              image: const AssetImage('assets/kupu.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showImageBottomSheet(context, 'assets/kupu.jpeg');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(2),
            ),
            child: Ink.image(
              image: const AssetImage('assets/kupu.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showImageBottomSheet(context, 'assets/kupu.jpeg');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(2),
            ),
            child: Ink.image(
              image: const AssetImage('assets/kupu.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showImageBottomSheet(context, 'assets/kupu.jpeg');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(2),
            ),
            child: Ink.image(
              image: const AssetImage('assets/kupu.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showImageBottomSheet(context, 'assets/kupu.jpeg');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(2),
            ),
            child: Ink.image(
              image: const AssetImage('assets/kupu.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showImageBottomSheet(context, 'assets/kupu.jpeg');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(2),
            ),
            child: Ink.image(
              image: const AssetImage('assets/kupu.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showImageBottomSheet(context, 'assets/kupu.jpeg');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(2),
            ),
            child: Ink.image(
              image: const AssetImage('assets/kupu.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showImageBottomSheet(context, 'assets/kupu.jpeg');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(2),
            ),
            child: Ink.image(
              image: const AssetImage('assets/kupu.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showImageBottomSheet(context, 'assets/kupu.jpeg');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(2),
            ),
            child: Ink.image(
              image: const AssetImage('assets/kupu.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

void _showImageBottomSheet(BuildContext context, String imagePath) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return ShowImage(imagePath: imagePath);
    },
  );
}

class ShowImage extends StatelessWidget {
  final String imagePath;
  const ShowImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(228, 255, 152, 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            const Text(
              'Apakah Anda ingin melihatnya lebih detail ?',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailImagePage(imagePath: imagePath),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:const Color.fromARGB(255, 248, 185, 12),
                  ),
                  child: const Text(
                    'yes',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 248, 185, 12),
                  ),
                  child: const Text(
                    'no',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}