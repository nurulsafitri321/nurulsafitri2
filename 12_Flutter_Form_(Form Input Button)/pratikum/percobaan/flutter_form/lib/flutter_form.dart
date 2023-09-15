import 'package:flutter/material.dart';

class FlutterForm extends StatefulWidget {
  const FlutterForm({super.key});

  @override
  State<FlutterForm> createState() => _FlutterFormState();
}

class _FlutterFormState extends State<FlutterForm> {
  var formKey = GlobalKey<FormState>();
  var inputController = TextEditingController();
  var radioValue = '';
  var checkValue = false;
  var dropdownValue = 0;
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
              ),
              ListTile(
                leading: Radio<String> (
                  value: 'Laki-laki',
                  groupValue: radioValue,
                  onChanged: (String? value) {
                    setState(() {
                      radioValue = value ?? '';
                    }
                    );
                  }
              ),
              title: const Text('Laki-laki'),
              ),

              ListTile(
                leading: Radio<String> (
                  value: 'Perempuan',
                  groupValue: radioValue,
                  onChanged: (String? value) {
                    setState(() {
                      radioValue = value ?? '';
                    }
                    );
                  }
              ),
              title: const Text('Perempuan'),
              ),
              ListTile(
                leading: Checkbox(
                  value: checkValue,
                  onChanged: (bool? value){
                setState(() {
                  checkValue = value ?? false;
                });
              },
            ),
            title: const Text('Setuju/ Tidak Setuju'),
            ),
            DropdownButton(
              value: dropdownValue,
              onChanged: (int? value) {
                setState(() {
                  dropdownValue = value ?? 0;
                });
              },
              items: const [
                DropdownMenuItem(
                  value: 0, 
                  child: Text('Pilih....'),
                ),

                DropdownMenuItem(
                  value: 1, 
                  child: Text('satu'),
                ),

                DropdownMenuItem(
                  value: 2, 
                  child: Text('dua'),
                ),

                DropdownMenuItem(
                  value: 3, 
                  child: Text('tiga'),
                ),

                DropdownMenuItem(
                  value: 4, 
                  child: Text('empat'),
                ),

                DropdownMenuItem(
                  value: 5, 
                  child: Text('lima'),
                ),
              ], 
              ),
              ElevatedButton(
                onPressed: () {}, 
                child: const Text ('Submit'),
              ),
              IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.add),
              ),
            ],
          ),
          )
    );
  }
}