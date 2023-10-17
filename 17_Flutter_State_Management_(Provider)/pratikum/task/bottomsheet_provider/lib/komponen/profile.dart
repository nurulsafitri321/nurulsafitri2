import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Color.fromARGB(255, 83, 69, 214)),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text('nurul safitri')
        ],
      ),
    );
  }
}