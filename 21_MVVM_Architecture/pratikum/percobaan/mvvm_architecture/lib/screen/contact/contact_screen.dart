import 'package:flutter/material.dart';
import 'package:mvvm_architecture/model/contact_model.dart';
import 'package:mvvm_architecture/screen/contact/contact_view_model.dart';
import 'package:provider/provider.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Provider.of<ContactViewModel>(context,listen: false ).getAllContacts();
    });
  }
  Widget build(BuildContext context) {
    final modelView = Provider.of<ContactViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: modelView.contacts.length,
        itemBuilder: (context, index){
        final contact = modelView.contacts[index];
        return ListTile(
          title: Text(contact.name),
          subtitle: Text(contact.phone),
        );
      }),
    );
  }
}