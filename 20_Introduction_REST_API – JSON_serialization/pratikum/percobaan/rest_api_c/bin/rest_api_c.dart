import 'dart:convert';

import 'package:dio/dio.dart';

// void main(){
//   Dio().get("http://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts").then((Response) {
//     print(Response);
//   });
// }

// void main(){
//   var dataMap = {
//     "name" : "John Thor",
//     "phone" : 629821648720,
//   };
//   var dataJSON = jsonEncode(dataMap);
//   print(dataJSON);
// }


void main(){
  var dataJSON = '{"name": "John Thor", "phone": 629830183681}';
  var dataMap = jsonDecode(dataJSON);
  print(dataMap);
}