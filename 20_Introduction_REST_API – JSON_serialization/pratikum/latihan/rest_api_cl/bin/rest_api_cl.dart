import 'dart:convert';

import 'package:dio/dio.dart';

// void main(){
//   Dio()
//   .get("http://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts")
//   .then((Response) {
//     print(Response);
//   });
// }

// void main(){
//   var dataMap = {
//     "name": "Jhon Thor",
//     "phone": 62139379186421,
//   };
//   var dataJSON = jsonEncode(dataMap);
//   print(dataJSON);
// }

void main(){
  var dataJSON = '{"name": "Jhon Thor", "phone": 62918236491}';
  var dataMap = jsonDecode(dataJSON);
  print(dataMap);
}