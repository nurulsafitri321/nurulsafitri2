import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String nama = '';
  String email = '';
  String nomorTelepon = '';
  String alamat = '';
  String jenisKelamin = '';
  List<String> hobi = [];
  Null gambar = null;

  @override
  Widget build(BuildContext context) {
    var file;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Form'),
        ),
        body: Center(
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Nama'),
                onChanged: (value) {
                  nama = value;
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Email'),
                onChanged: (value) {
                  email = value;
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Nomor telepon'),
                onChanged: (value) {
                  nomorTelepon = value;
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Alamat'),
                onChanged: (value) {
                  alamat = value;
                },
              ),
              Row(
                children: [
                  Radio(
                    value: 'laki-laki',
                    groupValue: jenisKelamin,
                    onChanged: (value) {
                      setState(() {
                        jenisKelamin = value!;
                      });
                    },
                  ),
                  const Text('Laki-laki'),
                  Radio(
                    value: 'perempuan',
                    groupValue: jenisKelamin,
                    onChanged: (value) {
                      setState(() {
                        jenisKelamin = value!;
                      });
                    },
                  ),
                  const Text('Perempuan'),
                ],
              ),
              CheckboxListTile(
                value: hobi.contains('membaca'),
                title: const Text('Membaca'),
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      hobi.add('membaca');
                    } else {
                      hobi.remove('membaca');
                    }
                  });
                },
              ),
              CheckboxListTile(
                value: hobi.contains('menulis'),
                title: const Text('Menulis'),
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      hobi.add('menulis');
                    } else {
                      hobi.remove('menulis');
                    }
                  });
                },
              ),
              CheckboxListTile(
                value: hobi.contains('bermain game'),
                title: const Text('Bermain game'),
                onChanged: (value) {
                  setState(() {
                    if (value!) {
                      hobi.add('bermain game');
                    } else {
                      hobi.remove('bermain game');
                    }
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Gambar'),
                //keyboardType: TextInputType.file,
                onChanged: (value) {
                  gambar = value as Null;
                },
              ),
              ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  print(
                    """
                    Nama: $nama
                    Email: $email
                    Nomor telepon: $nomorTelepon
                    Alamat: $alamat
                    Jenis kelamin: $jenisKelamin
                    Hobi: $hobi
                    Gambar: $gambar
                    """);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


