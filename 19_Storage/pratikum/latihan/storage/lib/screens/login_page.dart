import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storage/screens/home_s.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //property
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  late SharedPreferences loginData;
  late bool newUser;

  @override
  //method dispose untuk menghindari kebocoran data
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  //method checkLogin
  void checkLogin() async {
    loginData = await SharedPreferences.getInstance();
    newUser = loginData.getBool('login') ?? true;

    if (newUser == false) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
          (route) => false);
    }
  }

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

//widget tree
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Image.asset(
                'assets/login_page.png',
                width: 400,
                height: 200,
              ),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter your name',
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.vertical(),
                  ),
                ),
                style: TextStyle(fontSize: 16),
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.vertical(),
                  ),
                ),
                style: TextStyle(fontSize: 16),
                ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.vertical(),
                  ),
                ),
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                // Logika untuk menangani tombol "Lupa Password"
                // Tambahkan kode yang sesuai di sini
              },
              child: Text('Lupa Password?'),
            ),
            ElevatedButton(
              onPressed: () {
                // Logika untuk menangani tombol "Submit"
                String name = _nameController.text;
                String email = _emailController.text;
                String password = _passwordController.text;

                // Implementasi logika untuk mengirim data ke server atau lainnya
                print('Name: $name');
                print('Email: $email');
                print('Password: $password');

                // Tampilkan pesan atau lakukan navigasi jika diperlukan
              },
              child: Text('Submit'),
            ),
          ],
        ),
            ],
          ),
        ),
      ),
    );
  }
}