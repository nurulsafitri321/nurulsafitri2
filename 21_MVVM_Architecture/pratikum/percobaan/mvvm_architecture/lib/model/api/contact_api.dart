import 'package:mvvm_architecture/model/contact_model.dart';
import 'package:dio/dio.dart';
class ContactAPI{
  static Future<List<Contact>> getContact() async {
    final response = await Dio().get(
      "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts");

    List<Contact> contacts = (response.data as List)
        .map(
          (e) => Contact(
            id: e['id'], 
            name: e['name'], 
            phone: e['phone'],
          ),
        )
        .toList();
        return contacts;
  } 
}