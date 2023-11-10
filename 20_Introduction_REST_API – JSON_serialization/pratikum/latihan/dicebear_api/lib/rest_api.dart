import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DiceBearAPI {
  static Future<DiceBearImage> getRandomAvatar() async {
    final response = await http.get('https://api.dicebear.com/v1/avatars/random' as Uri);
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return DiceBearImage(
        imageUrl: jsonData['image']['url'],
        width: jsonData['image']['width'],
        height: jsonData['image']['height'],
      );
    } else {
      throw Exception('Failed to get random avatar');
    }
  }
}

class DiceBearImage {
  final String imageUrl;
  final int width;
  final int height;

  DiceBearImage({
    required this.imageUrl,
    required this.width,
    required this.height,
  });
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late DiceBearImage _diceBearImage;

  @override
  void initState() {
    super.initState();
    _getRandomAvatar();
  }

  Future<void> _getRandomAvatar() async {
    _diceBearImage = await DiceBearAPI.getRandomAvatar();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DiceBear API'),
      ),
      body: Center(
        child: Image.network(
          _diceBearImage.imageUrl,
          width: diceBearImage.width,
          height: _diceBearImage.height,
        ),
      ),
    );
  }
}
