import 'package:flutter/material.dart';

class FlutterForm extends StatefulWidget {
  const FlutterForm({super.key});

  @override
  State<FlutterForm> createState() => _FlutterFormState();
}

class _FlutterFormState extends State<FlutterForm> {
  var formKey = GlobalKey<FormState>();
  var inputController = TextEditingController();
  @override

  void dispose() {
    inputController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Form'),
        ),
        body: Form(
          key : formKey,
          child: Column(
            children: [
              TextField(
                controller: inputController,
              )
            ],
          ),
          )
    );
  }
}