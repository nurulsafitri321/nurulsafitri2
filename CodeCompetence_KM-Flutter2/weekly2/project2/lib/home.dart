import 'package:flutter/material.dart';


class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          WidgetSpan(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/wa.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var formKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  String? Function(String?)? validateEmail = (value) {
    if (value == null || value.isEmpty) {
      return 'Email tidak boleh kosong';
    }
    if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
        .hasMatch(value)) {
      return 'Masukkan email yang valid';
    }
    return null; // Validasi berhasil
  };

  void submit() {
    if (formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              'Data yang Anda masukkan:',
              
            ),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'First Name: ${firstNameController.text}',
                  
                ),
                Text(
                  'Email: ${emailController.text}',
                
                ),
                Text(
                  'Message: ${messageController.text}',
                ),
              ],
            ),
            actions: [
              TextButton(
                child: const Text(
                  'close',
                
                ),
                onPressed: () {
                  // Clear the text in the TextFormFields
                  firstNameController.clear();
                  emailController.clear();
                  messageController.clear();

                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                const Text(      
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(      
                  '+62 2172 8921 89 | Alterra',
                  style: TextStyle(
                    fontSize: 15,   
                  ),            
                ),           
                const SizedBox(height: 15),
                const Text(      
                  'Login',
                  style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold, 
                  ),
                
                ),
                const SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: firstNameController,
                      decoration: const InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color.fromARGB(227, 255, 255, 250),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color.fromARGB(227, 255, 255, 250),
                      ),
                      validator: validateEmail,
                    ),
                  ],
                ),
                const SizedBox(height: 29),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: messageController,
                      decoration: const InputDecoration(
                        labelText: 'Message',
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Color.fromARGB(227, 255, 255, 250),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: submit,
                  icon: const Icon(Icons.send_and_archive_rounded),
                  label: const Text(
                    'Submit',
                    
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 12, 218, 39),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final String judul;

  const CustomCard(
      {super.key, required this.icon, required this.text, required this.judul});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Column(
            children: [
              Icon(
                icon,
                size: 48,
              ),
              SizedBox(
                width: 150,
                child: Text(
                  judul,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 20,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 150,
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 15),
                  textAlign: TextAlign.justify,
                  maxLines: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyRightSidebar extends StatelessWidget {
  const MyRightSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const SizedBox(height: 30),
          createCenteredButton('About Us'),
          createCenteredButton('Contact Us'),
          createCenteredButton('Login'),
        ],
      ),
    );
  }

  Widget createCenteredButton(String buttonText) {
    return ListTile(
      title: Center(
        child: SizedBox(
          width: 150, 
          child: ElevatedButton(
            onPressed: () {},
            child: Text(buttonText),
          ),
        ),
      ),
    );
  }
}